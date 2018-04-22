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

class HookServiceProvider extends ServiceProvider
{

    /**
     * Boot the service provider.
     * @author Anh Ngo
     */
    public function boot()
    {
        add_filter(BASE_FILTER_PUBLIC_SINGLE_DATA, [$this, 'handleSingleView'], 4, 1);
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

            switch ($slug->reference) {

                case TOUR_MODULE_SCREEN_NAME:
                    $post = app(TourInterface::class)->findById($slug->reference_id);
                    $post = apply_filters(BASE_FILTER_BEFORE_GET_SINGLE, $post, app(TourInterface::class)->getModel(), TOUR_MODULE_SCREEN_NAME);
                    if (!empty($post)) {

                        SeoHelper::setTitle($post->name)->setDescription($post->description);

                        Theme::breadcrumb()->add(__('Home'), route('public.index'))->add($post->name, route('public.single', $slug->key));

                        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, TOUR_MODULE_SCREEN_NAME, $post);

                        $checkin = null;
                        $checkout = null;
                        if(request()->get('checkin') && request()->get('checkout')){
                           $checkin = request()->get('checkin');
                           $checkout = request()->get('checkout');
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

                        $checkin = null;
                        $checkout = null;
                        $booking = false;
                        $promotion = false;
                        if(request()->get('checkin') && request()->get('checkout')){
                           $checkin = request()->get('checkin');
                           $checkout = request()->get('checkout');
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
                         $checkin = null;
                         $checkout = null;
                         $promotion = false;
                         if(request()->get('checkin') && request()->get('checkout')){
                            $checkin = request()->get('checkin');
                            $checkout = request()->get('checkout');
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
}
