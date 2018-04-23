<?php

return [
    'name' => __('Member discount configuration'),
    'description' => __('Member Discounts as a percentage and cash'),
    'settings' => [
        [
            'label' => 'Allow Discount Membership',
            'type' => 'onOff',
            'attributes' => [
                'name' => 'allow_discount_membership',
                'value' => 1,
            ],
        ],
        [
	        'label' => __('Discount type'),
	        'type' => 'select',
	        'attributes' => [
	            'name' => 'member_discounts_type',
	            'list' => [
	                '1' => 'Percent',
	                '2' => 'Cash',
	            ],
	            'value' => '1',
	            'options' => [
	                'class' => 'form-control',
	            ],
	        ],
	    ],
	    [
	        'label' => 'Percent discount for members',
	        'type' => 'number',
	        'attributes' => [
	            'name' => 'percent_discount_for_members',
	            'value' => 10,
	            'options' => [
	                'class' => 'form-control',
	            ],
	        ],
	    ],
	    [
	        'label' => 'Cash discount for members',
	        'type' => 'number',
	        'attributes' => [
	            'name' => 'cash_discount_for_members',
	            'value' => 100000,
	            'options' => [
	                'class' => 'form-control',
	            ],
	        ],
	    ],
    ],
];
