<?php

use Botble\Events\Repositories\Interfaces\EventsInterface;

if (!function_exists('get_upcoming_events')) {
    /**
     * @param array $condition
     * @return mixed
     * @author Sang Nguyen
     */
    function get_upcoming_events($limit = 3)
    {
        return app(EventsInterface::class)->getUpcomingEvents($limit);
    }
}