<?php

namespace Botble\ACL\Http\Requests\API;

use Illuminate\Foundation\Http\FormRequest;

class AuthRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'client_id' => 'required',
            'client_secret' => 'required',
            'device_id' => 'required|string',
            'device_token' => 'string',
            'fcm_token' => 'string',
            'agent' => 'required|string|max:20|in:android,ios',
        ];
    }
}
