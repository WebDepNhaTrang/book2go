<?php

use Botble\Widget\AbstractWidget;

class HomeTestimonialWidget extends AbstractWidget
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
    protected $widgetDirectory = 'home_testimonial';

    /**
     * Widget constructor.
     * @author Sang Nguyen
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Home Testimonial',
            'description' => __('This is Home Testinomial for Homepage'),
            'number' => ''
        ]);
    }
}