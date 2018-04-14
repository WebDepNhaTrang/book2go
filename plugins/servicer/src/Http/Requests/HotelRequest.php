<?php

namespace Botble\Servicer\Http\Requests;

use Botble\Support\Http\Requests\Request;

class HotelRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     * @author Anh Ngo
     */
    public function rules()
    {
        return [
            'name' => 'required|max:200',
            'description' => 'max:500',
            'image' => 'max:255'
        ];
    }
}
