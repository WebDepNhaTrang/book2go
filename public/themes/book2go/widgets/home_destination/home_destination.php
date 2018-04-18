<?php

use Botble\Widget\AbstractWidget;

class HomeDestinationWidget extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * @var string
     */
    protected $frontendTemplate = 'frontend';

    /**
     * @var string
     */
    protected $backendTemplate = 'backend';

    /**
     * @var string
     */
    protected $widgetDirectory = 'home_destination';

    /**
     * Widget constructor.
     * @author Sang Nguyen
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Home Destination',
            'description' => __('This is Home Destination for Homepage'),
            'destination_image' => '',
            'number' => '02',
            'title' => 'Địa Điểm Nổi Bật',
            'sub_title' => 'Right place, Right time. Discover now the best destinations to travel this month! 
            <br>Recommended by millions of real travelers.',
            'hotels' => array()
        ]);
    }
}