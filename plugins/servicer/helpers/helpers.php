<?php

use Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface;

if (!function_exists('get_all_hotels')) {
    /**
     * @param array $args
     * @return array|mixed
     */
    function get_all_hotels($select = ['*'])
    {
        $hotels = app(ServiceTypeInterface::class)->all();
        return $hotels;
    }
}