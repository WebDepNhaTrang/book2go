<?php

namespace Botble\Servicer\Http\Controllers;

use Botble\Servicer\Http\Requests\BookingRequest;
use Theme;
use Botble\Servicer\Http\Requests\FrontRequest;
use Botble\Servicer\Repositories\Interfaces\BookingInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use MongoDB\Driver\Exception\Exception;
use Botble\Servicer\Tables\BookingTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\AjaxResponse;
use Botble\Servicer\Forms\BookingForm;
use Botble\Base\Forms\FormBuilder;
use Auth;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Servicer\Repositories\Interfaces\TourInterface;
use Botble\Servicer\Repositories\Interfaces\RoomTypeInterface;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Servicer\Http\Requests\PublicRequest;
use EmailHandler;
use Botble\Servicer\Repositories\Interfaces\PromotionInterface;
use Illuminate\Pagination\LengthAwarePaginator;

class PublicController extends BaseController
{
    /**
     * @var BookingInterface
     */
    protected $bookingRepository;

    /**
     * @var ServiceTypeInterface
     */
    protected $hotelRepository;

    /**
     * @var ApartmentInterface
     */
    protected $apartmentRepository;

    /**
     * @var TourInterface
     */
    protected $tourRepository;

    /**
     * @var ServicerInterface
     */
    protected $servicerRepository;

    /**
     * @var RoomTypeInterface
     */
    protected $roomTypeRepository;

    /**
     * @var PromotionInterface
     */
    protected $promotionRepository;

    /**
     * BookingController constructor.
     * @param BookingInterface $bookingRepository
     * @author Anh Ngo
     */
    public function __construct(BookingInterface $bookingRepository,
    		ServiceTypeInterface $hotelRepository,
    		ApartmentInterface $apartmentRepository,
    		TourInterface $tourRepository,
    		ServicerInterface $servicerRepository,
            RoomTypeInterface $roomTypeRepository,
            PromotionInterface $promotionRepository)
    {
        $this->bookingRepository = $bookingRepository;
        $this->hotelRepository = $hotelRepository;
        $this->apartmentRepository = $apartmentRepository;
        $this->tourRepository = $tourRepository;
        $this->servicerRepository = $servicerRepository;
        $this->roomTypeRepository = $roomTypeRepository;
        $this->promotionRepository = $promotionRepository;
    }

    /**
     * @param PublicRequest $request
     * @return view
     * @author Anh Ngo
     */
    public function getAvailable(PublicRequest $request)
    {
    	/*
    	 * @param $type: hotel & tour
    	 */
    	$type = $request->input('type');
    	$checkin = date('Y-m-d', strtotime($request->input('checkin')));
    	$checkout = date('Y-m-d', strtotime($request->input('checkout')));
    	if($type == HOTEL_MODULE_SCREEN_NAME){

    		// Get all id 
    		$servicer_ids = $this->servicerRepository->getRoomTypesApartments(['id'])->pluck('id');

    		// Get all servicers with total of servicers booked
    		$total_of_servicers = $this->bookingRepository->getTotalOfServicer($servicer_ids->toArray(), $checkin, $checkout)->pluck('total', 'servicer_id')->toArray();

    		// Filter hotel
    		$hotels = $this->hotelRepository->getHotels();
    		foreach ($hotels as $key_hotel => $hotel) {
    			$room_types = $hotel->roomTypeActive;
                if(!$room_types->count()){
                    $hotels->forget($key_hotel);
                }else{
                    foreach ($room_types as $key_room => $room) {
                        if(array_key_exists($room->id, $total_of_servicers)){
                            if($room->number_of_servicer - $total_of_servicers[$room->id] > 0){
                                break;
                            }
                            if($room_types->keys()->last() == $key_room){
                                $hotels->forget($key_hotel);
                            }
                        }
                    }
                }
    			 
    		}

    		$apartments = $this->apartmentRepository->getApartments();
			foreach ($apartments as $key => $apartment) {
			 	if(array_key_exists($apartment->id, $total_of_servicers)){
					if($apartment->number_of_servicer - $total_of_servicers[$apartment->id] > 0){
						break;
					}
					if($apartments->keys()->last() == $key){
						$apartments->forget($key);
					}
				}
			} 
            $data = $hotels->toBase()->merge($apartments);
    	}
    	if($type == TOUR_MODULE_SCREEN_NAME){
    		$tours = $this->tourRepository->getTours();
            $data = $tours;
    	}

        $currentPage = LengthAwarePaginator::resolveCurrentPage('page');
        $numOfItemOnPage = 7;
        if ($currentPage == 1) {
            $start = 0;
        }else {
            $start = ($currentPage - 1) * $numOfItemOnPage;
        }
        $currentPageCollection = $data->slice($start, $numOfItemOnPage)->all();
        $data = new LengthAwarePaginator($currentPageCollection, count($data), $numOfItemOnPage);
        $data->setPath(route('available.list').'?type='.$type.'&checkin='.$checkin.'&checkout='.$checkout);

        

    	return Theme::scope('search-result', compact('data', 'request'))->render();
    }

    /**
     * @param BookingFrontRequest $request
     * @return view
     * @author Anh Ngo
     */
    public function getBooking(FrontRequest $request)
    {
        $servicer = $this->servicerRepository->findById($request->input('id'));
        
        $servicer = $this->convertServicer($servicer->id, $servicer->format_type);

        $requests =  $this->requestOnly($request);

        switch ($servicer->format_type) {
            case TOUR_MODULE_SCREEN_NAME:
                $price_adults = $servicer->price * $requests['adults'];
                $price_children = $servicer->price * $requests['children'];
                $total_price = $price_adults + $price_children;
                $view = 'booking-tour';
                $requests['number_of_servicer'] = 1;
                break;
            
            default:
                $total_date = $this->totalDate($requests['checkin'], $requests['checkout']);
                $total_price = $servicer->price * $requests['number_of_servicer'] * $total_date;
                $view = 'booking';
                break;
        }

        $booking = $this->bookingRepository->createOrUpdate(array_merge($request->input(),[
            'servicer_id' => $request->input('id'),
            'member_id' => Auth::guard('member')->check()?Auth::guard('member')->user()->getKey():0,
            'status' => 0,
            'subtotal' => $total_price,
            'discount' => 0,
            'total' => $total_price,
            'servicer_name' => $servicer->name,
            'total_of_servicer' => $requests['number_of_servicer'],
            'user_id' => 0,
            'amount_adults' => $request->input('adults', 0),
            'amount_children' => $request->input('children', 0),
            'user_agent' => isset($_SERVER['HTTP_USER_AGENT'])?$_SERVER['HTTP_USER_AGENT']:null,
            'ip_address' => isset($_SERVER['REMOTE_ADDR'])?$_SERVER['REMOTE_ADDR']:null
        ]));

        $booking = apply_filters(BASE_FILTER_BEFORE_GET_BOOKING_PAGE, $booking, $servicer, PROMOTION_MODULE_SCREEN_NAME);

        return Theme::layout('booking')->scope($view, compact('servicer', 'requests', 'total_price', 'booking'))->render();
    }

    private function convertServicer($id, $format_type)
    {
        $servicer = collect();
        switch ($format_type) {
            case APARTMENT_MODULE_SCREEN_NAME:
                $servicer = $this->apartmentRepository->findById($id);
                break;
            case TOUR_MODULE_SCREEN_NAME:
                $servicer = $this->tourRepository->findById($id);
                break;
            case ROOM_TYPE_MODULE_SCREEN_NAME:
                $servicer = $this->roomTypeRepository->findById($id);
                break;
            default:
                $servicer = $this->servicerRepository->findById($id);
                break;
        }

        return $servicer;
    }

    private function totalDate($checkin, $checkout)
    {
        $checkin = strtotime($checkin);
        $checkout = strtotime($checkout);
        $datediff = $checkout - $checkin;

        $total_date = round($datediff / (60 * 60 * 24));
        return $total_date;
    }

    private function requestOnly($request)
    {
        return $request->only('checkin', 'checkout', 'number_of_servicer', 'adults', 'children');
    }

    /**
     * @param BookingFrontRequest $request
     * @return view
     * @author Anh Ngo
     */
    public function postBooking(FrontRequest $request, AjaxResponse $response)
    {
        $booking = $this->bookingRepository->getFirstBy(['id' => $request->input('booking_id'), 'status' => 0]);
        if(!$booking){
            return $response->setError(true)->setMessage('Đã xảy ra lỗi, vui lòng kiểm tra lại thông tin');
        }
        $servicer = $this->servicerRepository->findById($request->input('id'));
        
        $servicer = $this->convertServicer($servicer->id, $servicer->format_type);

        $requests =  $this->requestOnly($request);

        switch ($servicer->format_type) {
            case TOUR_MODULE_SCREEN_NAME:
                $price_adults = $servicer->price * $requests['adults'];
                $price_children = $servicer->price * $requests['children'];
                $total_price = $price_adults + $price_children;
                $requests['number_of_servicer'] = 1;
                break;
            
            default:
                $total_date = $this->totalDate($requests['checkin'], $requests['checkout']);
                $total_price = $servicer->price * $requests['number_of_servicer'] * $total_date;
                break;
        }
        $booking->fill([
            'status' => 1,
            'email' => $request->input('email'),
            'address' => $request->input('address'),
            'fullname' => $request->input('fullname'),
            'phone' => $request->input('phone'),
        ]);
        $booking->save();

        $data = $this->getDataBooking($booking, $request);

        // Send email for client
        EmailHandler::send(view('servicer::emails.booking', $data)->render(), trans('servicer::public.email_booking.title'), $data, 'servicer::emails.email');

        // Send email for Admin, ex: sale@hotel.com
        $data['to'] = setting('contact_email');
        EmailHandler::send(view('servicer::emails.booking', $data)->render(), trans('servicer::public.email.title'), $data, 'servicer::emails.email');

        return $response->setData($data)->setMessage('Bạn đã đặt phòng thành công, chúng tôi sẽ gửi mail xác nhận');
    }

    /**
     * Get data for email
     *
     * @author Anh Ngo
     */
    public function getDataBooking($booking, $request)
    {
        $price = $booking->servicer->price;
        $total_price = $booking->total;
        $data = [
            'name' => $booking->fullname,
            'fullname' => $booking->fullname,
            'email' => $booking->email,
            'phone' => $booking->phone,
            'address' => $booking->address,
            'content' => $booking->content,
            'buffet_breakfast' => $request->input('buffet_breakfast', 0),
            'special_requirements' =>  $request->input('special_requirements', null),
            'pickup_requirements' =>  $request->input('pickup_requirements', null),
            'servicer_id' => $booking->servicer_id,
            'checkin' => date("d/m/Y", strtotime($booking->checkin)),
            'checkout' => date("d/m/Y", strtotime($booking->checkout)),
            'room_name' => $booking->servicer_name,
            'quantum' => $booking->total_of_servicer,
            'booking_id' => $booking->id,
            'date' => date("l, d/m/Y H:i:s", strtotime($booking->created_at)),
            'to' => $booking->email,
            'discount' => number_format_price_nohtml($booking->discount),
            'price' => number_format_price_nohtml($price),
            'total_price' => number_format_price_nohtml($total_price),
            'hotel' => $booking->servicer->hotel?$booking->servicer->hotel->name:null
        ];
        return $data;
    }
}
