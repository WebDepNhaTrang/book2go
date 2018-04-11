<?php

namespace Botble\ACL\Http\Controllers\API;

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class AuthController extends Controller
{
    /**
     * @return mixed
     * @author Sang Nguyen
     */
    public function login(Request $request)
    {
        $http = new Client;

        $response = $http->post(url('/oauth/token'), [
            'form_params' => [
                'grant_type' => 'password',
                'client_id' => $request->input('client_id'),
                'client_secret' => $request->input('client_secret'),
                'username' => $request->input('username'),
                'password' => $request->input('password'),
                'scope' => '*',
            ],
        ]);

        return response()->json(json_decode((string) $response->getBody(), true));
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     * @author Sang Nguyen
     */
    public function logout(Request $request)
    {
        $request->user()->token()->delete();
        return response()->json(['error' => false]);
    }
}