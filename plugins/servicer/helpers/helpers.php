<?php

use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;
use Botble\Servicer\Repositories\Interfaces\ServicerInterface;
use Botble\Servicer\Repositories\Interfaces\ApartmentInterface;
use Botble\Servicer\Repositories\Interfaces\TourInterface;

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
        $hotels = app(ApartmentInterface::class)->getApartments($select);
        return $hotels;
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