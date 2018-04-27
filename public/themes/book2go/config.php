<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function($theme)
        {
            // You can remove this line anytime.
            $theme->setTitle('Copyright ©  2018 - book2govn.com');
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function($theme)
        {
            // You may use this event to set up your assets.
            $theme->asset()->container('footer')->usePath()->add('jquery', 'jquery/js/jquery-3.3.1.min.js');
            $theme->asset()->container('footer')->usePath()->add('popper-js', 'popper/js/popper.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('bootstrap-js', 'bootstrap/js/bootstrap.min.js', ['jquery']);
            
            $theme->asset()->container('footer')->usePath()->add('bootstrap-daterangepicker-js', 'bootstrap-daterangepicker/daterangepicker.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('moment-js', 'bootstrap-daterangepicker/moment.min.js');
            // $theme->asset()->container('footer')->usePath()->add('bootstrap-datepicker-js', 'bootstrap-datepicker/js/bootstrap-datepicker.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('slick-js', 'slick/js/slick.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('photo-gallery-js', 'photo-gallery-picEyes/jquery.picEyes.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('lean-modal-js', 'lean-modal/js/lean-modal.min.js', ['jquery']);
            $theme->asset()->container('footer')->usePath()->add('main-project-js', 'main-project/js/main.js', ['jquery']);
            $theme->asset()->container('footer')->add('toastr.min.js', 'https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js', ['jquery']);
            $theme->asset()->container('header')->add('google-map.js', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyAisknDhl9ltrTm8madKT6syVacjVMw4So', ['jquery']);
            
            $theme->asset()->usePath()->add('bootstrap-css', 'bootstrap/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('bootstrap-daterangepicker-css', 'bootstrap-daterangepicker/daterangepicker.css');
            // $theme->asset()->usePath()->add('bootstrap-datepicker-css', 'bootstrap-datepicker/css/bootstrap-datepicker.min.css');
            $theme->asset()->usePath()->add('font-awesome-css', 'font-awesome/css/fontawesome-all.min.css');
            $theme->asset()->usePath()->add('main-project-css', 'main-project/css/main.css');
            $theme->asset()->usePath()->add('responsive-project-css', 'main-project/css/responsive.css');
            $theme->asset()->add('toastr.min.css', 'https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css');
            

            $theme->composer(['page', 'post'], function($view) {
                $view->withShortcodes();
            });
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function($theme)
            {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            }
        ]
    ]
];
