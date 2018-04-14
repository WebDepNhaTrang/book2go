<?php

namespace Botble\Servicer\Http\Requests;

use Botble\Support\Http\Requests\Request;

class ServicerRequest extends Request
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
            'name' => 'required',
        ];
    }
}
