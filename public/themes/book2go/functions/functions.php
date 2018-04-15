<?php

register_page_template([
    'default' => 'Default',
    'about-template' => 'About Template',
    'hotel-list-template' => 'Hotel List Template',
    'tour-list-template' => 'Tour List Template',
    'faq-template' => 'FAQ Template',
    'contact-template' => 'Contact Template',
    'getit-template' => 'Get It Template',
]);

register_sidebar([
    'id' => 'home_sidebar',
    'name' => 'Home sidebar',
    'description' => 'This is a widget for Homepage',
]);

theme_option()->setSection([
    'title' => __('General'),
    'desc' => __('General settings'),
    'id' => 'opt-text-subsection-general',
    'subsection' => true,
    'icon' => 'fa fa-home',
]);

theme_option()->setSection([
    'title' => __('Logo'),
    'desc' => __('Change logo'),
    'id' => 'opt-text-subsection-logo',
    'subsection' => true,
    'icon' => 'fa fa-image',
    'fields' => [
        [
            'id' => 'logo',
            'type' => 'mediaImage',
            'label' => __('Logo'),
            'attributes' => [
                'name' => 'logo',
                'value' => null,
            ],
        ],
    ],
]);

theme_option()->setField([
    'id' => 'copyright',
    'section_id' => 'opt-text-subsection-general',
    'type' => 'text',
    'label' => __('Copyright'),
    'attributes' => [
        'name' => 'copyright',
        'value' => '© 2018 Book2go. All right reserved.',
        'options' => [
            'class' => 'form-control',
            'placeholder' => __('Change copyright'),
            'data-counter' => 120,
        ]
    ],
    'helper' => __('Copyright on footer of site'),
]);

theme_option()->setArgs(['debug' => true]);