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

register_post_template([
    'default-post-template' => 'Default Template',
    'news-detail-template' => 'News Detail Template'
]);

register_category_template([
    'default-category-template' => 'Default Template',
    'news-list-template' => 'News List Template'
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

theme_option()->setSection([
    'title' => __('Footer'),
    'desc' => __('Footer custom'),
    'id' => 'opt-text-subsection-footer',
    'subsection' => true,
    'icon' => 'fa fa-home',
]);
theme_option()->setField([
    'id' => 'footer_block1',
    'section_id' => 'opt-text-subsection-footer',
    'type' => 'textarea',
    'label' => __('Block 1'),
    'attributes' => [
        'name' => 'footer_block1',
        'value' => '<h6 class="text-uppercase mb-4 font-weight-bold">Book2govn</h6>
        <p>Here you can use rows and columns here to organize your footer content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>',
        'options' => [
            'class' => 'form-control'
        ]
    ]
]);
theme_option()->setField([
    'id' => 'footer_block2',
    'section_id' => 'opt-text-subsection-footer',
    'type' => 'textarea',
    'label' => __('Block 2'),
    'attributes' => [
        'name' => 'footer_block2',
        'value' => '<h6 class="text-uppercase mb-4 font-weight-bold">Sản Phẩm</h6>
        <p><a href="#!">MDBootstrap</a></p>
        <p><a href="#!">MDWordPress</a></p>
        <p><a href="#!">BrandFlow</a></p>
        <p><a href="#!">Bootstrap Angular</a></p>',
        'options' => [
            'class' => 'form-control'
        ]
    ]
]);
theme_option()->setField([
    'id' => 'footer_block3',
    'section_id' => 'opt-text-subsection-footer',
    'type' => 'textarea',
    'label' => __('Block 3'),
    'attributes' => [
        'name' => 'footer_block3',
        'value' => '<h6 class="text-uppercase mb-4 font-weight-bold">Liên Kết</h6>
        <p><a href="#!">Your Account</a></p>
        <p><a href="#!">Become an Affiliate</a></p>
        <p><a href="#!">Shipping Rates</a></p>
        <p><a href="#!">Help</a></p>',
        'options' => [
            'class' => 'form-control'
        ]
    ]
]);
theme_option()->setField([
    'id' => 'footer_block4',
    'section_id' => 'opt-text-subsection-footer',
    'type' => 'textarea',
    'label' => __('Block 4'),
    'attributes' => [
        'name' => 'footer_block4',
        'value' => '<h6 class="text-uppercase mb-4 font-weight-bold">Liên Hệ</h6>
        <p><i class="fa fa-home mr-3"></i> Nha Trang City, Khanh Hoa Province, Vietnam</p>
        <p><i class="fa fa-envelope mr-3"></i> info@book2govn.com</p>
        <p><i class="fa fa-phone mr-3"></i> (+84) 974 974 567</p>',
        'options' => [
            'class' => 'form-control'
        ]
    ]
]);

theme_option()->setSection([
    'title' => __('Social'),
    'desc' => __('Social Link'),
    'id' => 'opt-text-subsection-social',
    'subsection' => true,
    'icon' => 'fa fa-home',
    'fields' => [
        [
            'id' => 'social_facebook',
            'type' => 'text',
            'label' => __('Facebook'),
            'attributes' => [
                'name' => 'social_facebook',
                'value' => '#',
                'options' => [
                    'class' => 'form-control'
                ]
            ],
        ],
        [
            'id' => 'social_twitter',
            'type' => 'text',
            'label' => __('Twitter'),
            'attributes' => [
                'name' => 'social_twitter',
                'value' => '#',
                'options' => [
                    'class' => 'form-control'
                ]
            ],
        ],
        [
            'id' => 'social_google',
            'type' => 'text',
            'label' => __('Google'),
            'attributes' => [
                'name' => 'social_google',
                'value' => '#',
                'options' => [
                    'class' => 'form-control'
                ]
            ],
        ],
        [
            'id' => 'social_linkedin',
            'type' => 'text',
            'label' => __('LinkedIn'),
            'attributes' => [
                'name' => 'social_linkedin',
                'value' => '#',
                'options' => [
                    'class' => 'form-control'
                ]
            ],
        ],
    ],
]);

theme_option()->setSection([
    'title' => __('Booking Page'),
    'desc' => __('Booking Page'),
    'id' => 'opt-text-subsection-bookingpage',
    'subsection' => true,
    'icon' => 'fa fa-home',
    'fields' => [
        [
            'id' => 'bookingpage_img',
            'type' => 'mediaImage',
            'label' => __('Image'),
            'attributes' => [
                'name' => 'bookingpage_img',
                'value' => null,
            ],
        ],
    ],
]);

theme_option()->setArgs(['debug' => true]);