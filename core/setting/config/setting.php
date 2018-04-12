<?php

return [
    'general' => [
        'name' => trans('core.setting::setting.general.general_block'),
        'settings' => [
            [
                'label' => trans('core.setting::setting.general.rich_editor'),
                'type' => 'select',
                'attributes' => [
                    'name' => 'rich_editor',
                    'list' => [
                        'ckeditor' => 'Ckeditor',
                        'tinymce' => 'Tinymce',
                    ],
                    'value' => 'ckeditor',
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.site_title'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'site_title',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.site_title'),
                        'data-counter' => 120,
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.admin_email'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'admin_email',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.site_title'),
                        'data-counter' => 60,
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.show_admin_bar'),
                'type' => 'onOff',
                'attributes' => [
                    'name' => 'show_admin_bar',
                    'value' => 1,
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.enable_change_admin_theme'),
                'type' => 'onOff',
                'attributes' => [
                    'name' => 'enable_change_admin_theme',
                    'value' => 1,
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.enable_multi_language_in_admin'),
                'type' => 'onOff',
                'attributes' => [
                    'name' => 'enable_multi_language_in_admin',
                    'value' => 1,
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.admin_logo'),
                'type' => 'mediaImage',
                'attributes' => [
                    'name' => 'admin_logo',
                    'value' => config('core.base.general.logo'),
                    'attributes' => [
                        'allow_thumb' => false,
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.admin_title'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'admin_title',
                    'value' => config('core.base.general.base_name'),
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.admin_title'),
                        'data-counter' => 120,
                    ],
                ],
            ],
        ]
    ],
    'contact' => [
        'name' => trans('core.setting::setting.general.contact_block'),
        'settings' => [
            [
                'label' => trans('core.setting::setting.general.address'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'contact_address',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.address'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.email'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'contact_email',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.email'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.email_support'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'email_support',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.email_support'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.phone'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'contact_phone',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.phone'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.hotline'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'contact_hotline',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.hotline'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.google_plus'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'google_plus',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => 'https://plus.google.com/+user',
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.facebook'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'facebook',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => 'https://facebook.com/username',
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.twitter'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'twitter',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => 'https://twitter.com/username',
                    ],
                ],
            ],
        ]
    ],
    'seo' => [
        'name' => trans('core.setting::setting.general.seo_block'),
        'settings' => [
            [
                'label' => trans('core.setting::setting.general.seo_title'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'seo_title',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.seo_title'),
                        'data-counter' => 120,
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.seo_description'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'seo_description',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.seo_description'),
                        'data-counter' => 120,
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.seo_keywords'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'seo_keywords',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.seo_keywords'),
                        'data-counter' => 60,
                    ],
                ],
            ],
        ]
    ],
    'webmaster_tools' => [
        'name' => trans('core.setting::setting.general.webmaster_tools_block'),
        'settings' => [
            [
                'label' => trans('core.setting::setting.general.google_site_verification'),
                'type' => 'text',
                'attributes' => [
                    'name' => 'google_site_verification',
                    'value' => null,
                    'options' => [
                        'class' => 'form-control',
                        'placeholder' => trans('core.setting::setting.general.placeholder.google_site_verification'),
                    ],
                ],
            ],
            [
                'label' => trans('core.setting::setting.general.enable_captcha'),
                'type' => 'onOff',
                'attributes' => [
                    'name' => 'enable_captcha',
                    'value' => 1,
                ],
            ],
        ]
    ],
    'cache' => [
            'name' => 'Cache',
            'settings' => [
                [
                    'label' => trans('core.setting::setting.general.cache_time'),
                    'type' => 'number',
                    'attributes' => [
                        'name' => 'cache_time',
                        'value' => 10,
                        'options' => [
                            'class' => 'form-control',
                        ],
                    ],
                ],
                [
                    'label' => trans('core.setting::setting.general.cache_time_site_map'),
                    'type' => 'number',
                    'attributes' => [
                        'name' => 'cache_time_site_map',
                        'value' => 3600,
                        'options' => [
                            'class' => 'form-control',
                        ],
                    ],
                ],
                [
                    'label' => trans('core.setting::setting.general.enable_cache'),
                    'type' => 'onOff',
                    'attributes' => [
                        'name' => 'enable_cache',
                        'value' => 1,
                    ],
                ],
            ],
        ],
];
