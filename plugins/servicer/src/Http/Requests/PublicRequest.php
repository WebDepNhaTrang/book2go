<?php

namespace Botble\Servicer\Http\Requests;

use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class PublicRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author Anh Ngo
     */
    public function rules()
    {
    	$rule = [
    		'type' => [
					        'required',
					        Rule::in([HOTEL_MODULE_SCREEN_NAME, TOUR_MODULE_SCREEN_NAME]),
					 ],
			'checkin' => 'required|date_format:Y-m-d|after:yesterday|before:checkout',
            'checkout' => 'required|date_format:Y-m-d|after:checkin'
    	];
        return $rule;
    }
}
