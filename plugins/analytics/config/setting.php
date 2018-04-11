<?php

return [
    'analytics' => [
        'name' => 'Google Analytics',
        'settings' => [
            [
                'label' => __('Tracking Code'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'google_analytics',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => __('Example: GA-12586526-8'),
                    ],
                ],
            ],
            [
                'label' => 'View ID',
                'type' => 'text',
                'attributes' => [
                    'name' => 'analytics_view_id',
                    'value' => config('plugins.analytics.general.view_id'),
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => 'Google Analytics View ID',
                        'data-counter' => 120,
                    ],
                ],
            ],
            [
                'label' => 'Service Account Credentials',
                'type' => 'textarea',
                'attributes' => [
                    'name' => 'analytics_service_account_credentials',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => 'Google Analytics Credentials',
                        'rows' => '5',
                    ],
                ],
            ],
        ],
    ],
];
