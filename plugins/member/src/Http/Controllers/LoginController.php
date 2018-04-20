<?php

namespace Botble\Member\Http\Controllers;

use App\Http\Controllers\Controller;
use Botble\ACL\Traits\LogoutGuardTrait;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Theme;
use URL;
use Validator;
use Illuminate\Support\MessageBag;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers, LogoutGuardTrait {
        LogoutGuardTrait::logout insteadof AuthenticatesUsers;
    }

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    public $redirectTo;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('member.guest', ['except' => 'logout']);

        session(['url.intended' => URL::previous()]);
        $this->redirectTo = session()->get('url.intended');
    }

    /**
     * Show the application's login form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showLoginForm()
    {
        return Theme::of('plugins.member::auth.login')->render();
    }

    /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard('member');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\Response|\Symfony\Component\HttpFoundation\Response|void
     * @author Sang Nguyen
     */
    public function login(Request $request)
    {
        $this->validateLogin($request);

        // If the class is using the ThrottlesLogins trait, we can automatically throttle
        // the login attempts for this application. We'll key this by the username and
        // the IP address of the client making these requests into this application.
        if ($this->hasTooManyLoginAttempts($request)) {
            $this->fireLockoutEvent($request);

            return $this->sendLockoutResponse($request);
        }

        if ($this->attemptLogin($request)) {
            return $this->sendLoginResponse($request);
        }

        // If the login attempt was unsuccessful we will increment the number of attempts
        // to login and redirect the user back to the login form. Of course, when this
        // user surpasses their maximum number of attempts they will get locked out.
        $this->incrementLoginAttempts($request);

        return $this->sendFailedLoginResponse($request);
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\Response|\Symfony\Component\HttpFoundation\Response|void
     * @author Sang Nguyen
     */
    public function login_ajax(Request $request)
    {
        $rules = [
    		'email' =>'required|email',
    		'password' => 'required|min:6'
    	];
    	$messages = [
    		'email.required' => 'Email là trường bắt buộc',
    		'email.email' => 'Email không đúng định dạng',
    		'password.required' => 'Mật khẩu là trường bắt buộc',
    		'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự',
    	];
    	$validator = Validator::make($request->all(), $rules, $messages);

    	if ($validator->fails()) {
            return response()->json([
                    'error' => true,
                    'message' => $validator->errors()
                ], 200);
    		// return redirect()->back()->withErrors($validator)->withInput();
    	} else {
    		$email = $request->input('email');
    		$password = $request->input('password');

    		if( $this->attemptLogin($request) ) {
                return response()->json([
                    'error' => false,
                    'message' => 'success'
                ], 200);
    			// return redirect()->intended('/');
    		} else {
    			$errors = new MessageBag(['errorlogin' => 'Email hoặc mật khẩu không đúng']);
                return response()->json([
                    'error' => true,
                    'message' => $errors
                ], 200);
    			// return redirect()->back()->withInput()->withErrors($errors);
    		}
    	}
    }
}
