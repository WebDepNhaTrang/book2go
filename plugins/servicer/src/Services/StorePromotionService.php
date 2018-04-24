<?php

namespace Botble\Servicer\Services;

use Botble\Servicer\Models\Promotion;
use Botble\Servicer\Services\Abstracts\StorePromotionServiceAbstract;
use Illuminate\Http\Request;
use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;

class StorePromotionService extends StorePromotionServiceAbstract
{

    /**
     * @param Request $request
     * @param Promotion $promotion
     * @author Anh Ngo
     * @return mixed|void
     */
    public function execute(Request $request, Promotion $promotion)
    {
        $hotels = $request->input('hotels');
        $apartments = $request->input('apartments');
        $tours = $request->input('tours');
        $promotion->servicers()->detach();
        $promotion->hotels()->detach();
        if (!empty($hotels)) {
            foreach ($hotels as $id_hotel) {
                $promotion->hotels()->attach([ $id_hotel => ['reference'=> HOTEL_MODULE_SCREEN_NAME]]);
                $hotel = app(ServiceTypeInterface::class)->findById($id_hotel);
                if($hotel && $hotel->roomType){
                    foreach ($hotel->roomType as $key => $room) {
                        $promotion->hotels()->attach([ $room->id => ['reference'=> ROOM_TYPE_MODULE_SCREEN_NAME]]);
                    }
                }
            }
        }
        if (!empty($tours)) {
            foreach ($tours as $tour) {
                $promotion->tours()->attach([ $tour => ['reference'=> TOUR_MODULE_SCREEN_NAME]]);
            }
        }
        if (!empty($apartments)) {
            foreach ($apartments as $apartment) {
                $promotion->apartments()->attach([ $apartment => ['reference'=> APARTMENT_MODULE_SCREEN_NAME]]);
            }
        }
    }
}
