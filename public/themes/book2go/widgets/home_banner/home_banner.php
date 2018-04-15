<?php

use Botble\Widget\AbstractWidget;

class HomeBannerWidget extends AbstractWidget
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
    protected $widgetDirectory = 'home_banner';

    /**
     * Widget constructor.
     * @author Sang Nguyen
     */
    public function __construct()
    {
        parent::__construct([
            'name' => 'HomeBanner',
            'description' => __('This is Home Banner widget'),
            'banner_image' => ''
        ]);
    }
}