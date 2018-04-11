<?php

return [
    'name' => __('Contact'),
    'description' => __('Contact email config'),
    'settings' => [
        [
            'label' => __('Email\'s subject'),
            'type' => 'text',
            'attributes' => [
                'name' => 'contact_email_subject',
                'value' => null,
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('Subject'),
                ],
            ],
            'helper' => __('The subject of email sent to administrator!'),
        ],
    ],
];
