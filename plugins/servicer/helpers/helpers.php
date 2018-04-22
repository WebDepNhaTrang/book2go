<?php

use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Servicer\Repositories\Interfaces\TourInterface;
use Illuminate\Pagination\LengthAwarePaginator;

if (!function_exists('get_all_hotels')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_all_hotels($select = ['*'])
    {
        $hotels = app(ServiceTypeInterface::class)->getHotels($select);
        return $hotels;
    }
}

if (!function_exists('get_all_tours')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_all_tours($select = ['*'])
    {
        $hotels = app(TourInterface::class)->getTours($select);
        return $hotels;
    }
}

if (!function_exists('get_all_apartments')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_all_apartments($select = ['*'])
    {
        $apartments = app(ApartmentInterface::class)->getApartments($select);
        return $apartments;
    }
}


if (!function_exists('get_hotel_by_ids')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_hotel_by_ids($ids, $select = ['*'])
    {
        $hotels = app(ServiceTypeInterface::class)->getHotelByIds($ids, $select);
        return $hotels;
    }
}

if (!function_exists('get_hotel_by_id')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_hotel_by_id($id)
    {
        $hotels = app(ServiceTypeInterface::class)->getHotelById($id);
        return $hotels;
    }
}

if (!function_exists('render_number_star')) {
    function render_number_star($star){
        if($star){
            $html = '<span class="star">';
            for($i = 1; $i <= $star; $i++){
                $html = $html . '<span class="fa fa-star"></span>';
            }
            $html = $html . '</span>';
            return $html;
        }
        return null;
    }
}

if (!function_exists('get_listing_hotels_apartments')) {
    function get_listing_hotels_apartments($numOfItemOnPage = 2){

        $hotels = app(ServiceTypeInterface::class)->getHotelsFront();
        $apartments = app(ApartmentInterface::class)->getApartmentsFront();
        $data = $hotels->toBase()->merge($apartments)->sortBy('order');

        $currentPage = LengthAwarePaginator::resolveCurrentPage('page');

        if ($currentPage == 1) {
            $start = 0;
        }else {
            $start = ($currentPage - 1) * $numOfItemOnPage;
        }

        $currentPageCollection = $data->slice($start, $numOfItemOnPage)->all();

        $paginatedTop = new LengthAwarePaginator($currentPageCollection, count($data), $numOfItemOnPage);
        
        return $paginatedTop;
    }
}

if (!function_exists('get_tours_front')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_tours_front($select = ['*'], $page = true, $numberOfOnPage = 3)
    {
        $tours = app(TourInterface::class)->getToursFront($select, $page, $numberOfOnPage);
        return $tours;
    }
}

if (!function_exists('render_facebook_social')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function render_facebook_social($route = null)
    {
        if($route){
            $data = '<iframe src="https://www.facebook.com/plugins/share_button.php?href=' .$route. '&layout=button_count&size=small&mobile_iframe=true&appId=1635619343393030&width=111&height=20" width="300" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                    <iframe src="https://www.facebook.com/plugins/like.php?href=' .$route. '&layout=standard&action=like&size=small&show_faces=false&share=false&height=35&appId=1635619343393030" width="350" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>';
            return $data;
        }
        return null;
        
        
    }
}