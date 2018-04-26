<?php

namespace Botble\Servicer\Providers;

use Botble\Base\Supports\Helper;
use Eloquent;
use Illuminate\Support\ServiceProvider;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Servicer\Repositories\Interfaces\TourInterface;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;
use Menu;
use Botble\Dashboard\Repositories\Interfaces\DashboardWidgetInterface;
use Botble\Dashboard\Repositories\Interfaces\DashboardWidgetSettingInterface;
use Auth;
use SeoHelper;
use Theme;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;
use Session;

class HookServiceProvider extends ServiceProvider
{

    /**
     * Boot the service provider.
     * @author Anh Ngo
     */
    public function boot()
    {
        add_filter(BASE_FILTER_PUBLIC_SINGLE_DATA, [$this, 'handleSingleView'], 4, 1);
        add_filter(BASE_FILTER_BEFORE_GET_BOOKING_PAGE, [$this, 'checkPromotionBeforeShow'], 10, 3);
        add_filter(BASE_FILTER_BEFORE_GET_BOOKING_PAGE, [$this, 'checkDiscountMemberBeforeShow'], 11, 3);
    }

    /**
     * @param $slug
     * @return array|Eloquent
     * @author Anh Ngo
     */
    public function handleSingleView($slug)
    {
        if ($slug instanceof Eloquent) {
            $data = [];

            $checkin = session('checkin');
            $checkout = session('checkout');
            if(request()->get('checkin') && request()->get('checkout')){
                $checkin = request()->get('checkin');
                $checkout = request()->get('checkout');
                session()->put('checkin', $checkin);
                session()->put('checkout', $checkout);
            }
            switch ($slug->reference) {

                case TOUR_MODULE_SCREEN_NAME:
                    $post = app(TourInterface::class)->findById($slug->reference_id);
                    
                    $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(TourInterface::class)->getModel(), TOUR_MODULE_SCREEN_NAME);
                    if (!empty($post)) {

                        SeoHelper::setTitle($post->name)->setDescription($post->description);

                        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, TOUR_MODULE_SCREEN_NAME, $post);

                        $promotion = null;
                        if($checkin && $checkout){
                           $promotion = app(PromotionInterface::class)->getPromotionById($post->id, TOUR_MODULE_SCREEN_NAME, $checkin, $checkout);
                        }

                        $data = [
                            'template' => config('plugins.servicer.servicer.tour-template'),
                            'view' => config('plugins.servicer.servicer.tour-view'),
                            'data' => compact('post', 'checkout', 'checkin', 'promotion'),
                        ];
                    }
                    break;
                case APARTMENT_MODULE_SCREEN_NAME:
                    $post = app(ApartmentInterface::class)->findById($slug->reference_id);
                    $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ApartmentInterface::class)->getModel(), APARTMENT_MODULE_SCREEN_NAME);
                    if (!empty($post)) {

                        SeoHelper::setTitle($post->name)->setDescription($post->description);

                        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, APARTMENT_MODULE_SCREEN_NAME, $post);

                        
                        $booking = false;
                        $promotion = false;
                        if($checkin && $checkout){
                           $booking = true;
                           // Get all servicers with total of servicers booked
                           $total_of_servicers = app(BookingInterface::class)->getTotalOfServicer($post->id, $checkin, $checkout)->pluck('total', 'servicer_id')->toArray();

                           if(array_key_exists($post->id, $total_of_servicers)){
                               if($post->number_of_servicer - $total_of_servicers[$post->id] > 0){
                                   $post->number_of_servicer -= $total_of_servicers[$post->id];
                               }else{
                                   $booking = false;
                               }
                           }

                           $promotion = app(PromotionInterface::class)->getPromotionById($post->id, APARTMENT_MODULE_SCREEN_NAME, $checkin, $checkout);

                        }

                        $data = [
                            'template' => config('plugins.servicer.servicer.apartment-template'),
                            'view' => config('plugins.servicer.servicer.apartment-view'),
                            'data' => compact('post', 'checkin', 'checkout', 'booking', 'promotion'),
                        ];
                    }
                    break;
                
                case HOTEL_MODULE_SCREEN_NAME:
                     $post = app(ServiceTypeInterface::class)->findById($slug->reference_id);
                     $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(ServiceTypeInterface::class)->getModel(), HOTEL_MODULE_SCREEN_NAME);
      
                     if (!empty($post)) {
                        
                         SeoHelper::setTitle($post->name)->setDescription($post->description);

                         Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                         do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, HOTEL_MODULE_SCREEN_NAME, $post);

                         $room_types = $post->roomTypeActive;
                         
                         $promotion = false;
                         if($checkin && $checkout){
                            // Get all servicers with total of servicers booked
                            $total_of_servicers = app(BookingInterface::class)->getTotalOfServicer($room_types->pluck('id')->toArray(), $checkin, $checkout)->pluck('total', 'servicer_id')->toArray();

                            foreach ($room_types as $key => $room) {
                                if(array_key_exists($room->id, $total_of_servicers)){
                                    if($room->number_of_servicer - $total_of_servicers[$room->id] > 0){
                                        $room->number_of_servicer -= $total_of_servicers[$room->id];
                                    }else{
                                        $room_types->forget($key);
                                    }
                                }
                            }

                            $promotion = app(PromotionInterface::class)->getPromotionById($post->id, HOTEL_MODULE_SCREEN_NAME, $checkin, $checkout);
                            
                         }

                         $data = [
                             'template' => config('plugins.servicer.servicer.hotel-template'),
                             'view' => config('plugins.servicer.servicer.hotel-view'),
                             'data' => compact('post', 'room_types', 'checkin', 'checkout', 'promotion'),
                         ];
                     }
                     break;
            }
            if (!empty($data)) {
                return $data;
            }
        }

        return $slug;
    }


    /**
     * @return mixed
     * @author Anh Ngo
     */
    public function checkPromotionBeforeShow(Eloquent $booking, $servicer, $screen)
    {
        $promotion = app(PromotionInterface::class)->getPromotionById($servicer->id, $servicer->format_type, $booking->checkin, $booking->checkout);
        $promotion_extension = [];
        if($promotion){
            switch ($servicer->format_type) {
                case TOUR_MODULE_SCREEN_NAME:
                    $befor_discount = $booking->subtotal * $promotion->cost;
                    $befor_discount = $befor_discount / 100;
                    break;

                default:
                    $start = $booking->checkin;
                    if($start < $promotion->start_date){
                        $start = date('Y-m-d', strtotime($promotion->start_date));
                    }
                    $end = $booking->checkout;
                    if($end > $promotion->end_date){
                        $end = date('Y-m-d', strtotime($promotion->end_date));
                    }
                    $promotion_extension = ['promotion_start_date' => $start, 'promotion_end_date' => $end];
                    $total_date = $this->totalDate($start, $end);
                    $befor_discount = $servicer->price * $booking->total_of_servicer * $total_date * $promotion->cost;
                    $befor_discount = $befor_discount / 100;
                    break;
            }
            $discount = round($booking->discount + $befor_discount);
            $total = $booking->subtotal - $discount;
            $notes = json_decode($booking->notes, true);
            $promotion_note = [
                'promotion_id' => $promotion->id, 
                'promotion_name' => $promotion->promotion_name, 
                'promotion_type' => PROMOTION_MODULE_SCREEN_NAME,
                'promotion_cost' => $promotion->cost,
                'promotion_discount' => $befor_discount,
                'promotion_extension' => $promotion_extension];
            $notes = array_merge($notes?:[], [$promotion_note]);
            $notes = json_encode($notes, true);
            $booking->fill(['discount' => $discount, 'total' => $total, 'notes' => $notes]);
            $booking->save();
            return $booking;
        }
        return $booking;
    }

    /**
     * @return mixed
     * @author Anh Ngo
     */
    public function checkDiscountMemberBeforeShow(Eloquent $booking, $servicer, $screen)
    {
        if(setting('allow_discount_membership', true) && Auth::guard('member')->check()){
            if(setting('member_discounts_type') == 1 && setting('percent_discount_for_members')){
                $cost = setting('percent_discount_for_members');
                $befor_discount = ($booking->subtotal * $cost) / 100;
                $discount = round($booking->discount + $befor_discount);
            }elseif(setting('member_discounts_type') == 2 && setting('cash_discount_for_members')){
                $cost = setting('cash_discount_for_members');
                $befor_discount = $cost;
                $discount = round($booking->discount + $befor_discount);
            }else{
                return $booking;
            }

            $total = $booking->subtotal - $discount;
            $promotion_extension = [];
            $notes = json_decode($booking->notes, true);
            $promotion_note = [
                'promotion_id' => 0, 
                'promotion_name' => trans('servicer::public.discount_for_member'), 
                'promotion_type' => MEMBER_MODULE_SCREEN_NAME,
                'promotion_cost' => $cost, 
                'promotion_discount' => $befor_discount,
                'promotion_extension' => $promotion_extension];
            $notes = array_merge($notes?:[], [$promotion_note]);
            $notes = json_encode($notes, true);
            $booking->fill(['discount' => $discount, 'total' => $total, 'notes' => $notes]);
            $booking->save();
            return $booking;
        }

        return $booking;
    }

    private function totalDate($checkin, $checkout)
    {
        $checkin = strtotime($checkin);
        $checkout = strtotime($checkout);
        $datediff = $checkout - $checkin;

        $total_date = round($datediff / (60 * 60 * 24));
        return $total_date;
    }
}
