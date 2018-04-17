<?php

use Botble\Widget\AbstractWidget;

class HomeGuaranteeWidget extends AbstractWidget
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
    protected $widgetDirectory = 'home_guarantee';

    /**
     * Widget constructor.
     * @author Sang Nguyen
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'Home Guarantee',
            'description' => __('This is Home Guarantee for Homepage'),
            'number' => '1',
            'title' => 'Cam kết của chúng tôi',
            'sub_title' => 'Your fun and enjoyment is guaranteed when you book travel tours and hotels with us. 
            <br>Well-organized routine, experienced guide, and professional service'
        ]);
    }
}