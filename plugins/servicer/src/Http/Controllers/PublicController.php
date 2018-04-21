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
     * BookingController constructor.
     * @param BookingInterface $bookingRepository
     * @author Anh Ngo
     */
    public function __construct(BookingInterface $bookingRepository,
    		ServiceTypeInterface $hotelRepository,
    		ApartmentInterface $apartmentRepository,
    		TourInterface $tourRepository,
    		ServicerInterface $servicerRepository,
            RoomTypeInterface $roomTypeRepository)
    {
        $this->bookingRepository = $bookingRepository;
        $this->hotelRepository = $hotelRepository;
        $this->apartmentRepository = $apartmentRepository;
        $this->tourRepository = $tourRepository;
        $this->servicerRepository = $servicerRepository;
        $this->roomTypeRepository = $roomTypeRepository;
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

        $total_date = $this->totalDate($requests['checkin'], $requests['checkout']);

        $total_price = number_format($servicer->price * $requests['number_of_servicer'] * $total_date, 2);

        return Theme::layout('booking')->scope('booking', compact('servicer', 'requests', 'total_price'))->render();
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
        $servicer = $this->servicerRepository->findById($request->input('id'));
        
        $servicer = $this->convertServicer($servicer->id, $servicer->format_type);

        $requests =  $this->requestOnly($request);

        $total_date = $this->totalDate($requests['checkin'], $requests['checkout']);

        $total_price = $servicer->price * $requests['number_of_servicer'] * $total_date;

        $booking = $this->bookingRepository->createOrUpdate(array_merge($request->input(),[
            'servicer_id' => $request->input('id'),
            'member_id' => Auth::guard('member')->check()?Auth::guard('member')->user()->getKey():0,
            'status' => 1,
            'total' => $total_price,
            'servicer_name' => $servicer->name,
            'total_of_servicer' => $requests['number_of_servicer'],
            'user_id' => 0,
        ]));

        return $response->setData($booking)->setMessage('Bạn đã đặt phòng thành công, chúng tôi sẽ gửi mail xác nhận');
    }
}
