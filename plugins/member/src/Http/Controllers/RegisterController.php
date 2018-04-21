<?php

namespace Botble\Member\Http\Controllers;

use App\Http\Controllers\Controller;
use Botble\Member\Models\Member;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Auth;
use Theme;
use Validator;
use Illuminate\Http\Request;
use Illuminate\Support\MessageBag;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('member.guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:members',
            'password' => 'required|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array $data
     * @return Member
     */
    protected function create(array $data)
    {
        return Member::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\Http\Response
     */
    public function showRegistrationForm()
    {
        return Theme::of('plugins.member::auth.register')->render();
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard('member');
    }

    public function register_ajax(Request $request)
    {
        $rules = [
            'name' => 'required|max:255',
    		'email' => 'required|email|max:255|unique:members',
            'password' => 'required|min:6',
            'phone' => 'required|max:255'
    	];
    	$messages = [
            'name.required' => 'Họ tên là trường bắt buộc',
    		'email.required' => 'Email là trường bắt buộc',
            'email.email' => 'Email không đúng định dạng',
            'email.unique' => 'Email đã tồn tại',
    		'password.required' => 'Mật khẩu là trường bắt buộc',
            'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự',
            'phone.required' => 'Số điện thoại là trường bắt buộc',
    	];
    	$validator = Validator::make($request->all(), $rules, $messages);

    	if ($validator->fails()) {
            return response()->json([
                    'error' => true,
                    'message' => $validator->errors()
                ], 200);
    		// return redirect()->back()->withErrors($validator)->withInput();
    	} else {
            $member = new Member;

            
            $member->name = $request->input('name');
            $member->email = $request->input('email');
            $member->password = bcrypt($request->input('password'));
            $member->phone = $request->input('phone');
            $member->address = $request->input('address');
            $member->company = $request->input('company');
            
            $member->save();

    		$this->guard()->login($member);
                return response()->json([
                    'error' => false,
                    'message' => 'success'
                ], 200);
    			
    		// } else {
    		// 	$errors = new MessageBag(['errorregister' => 'Đăng ký không thành công']);
            //     return response()->json([
            //         'error' => true,
            //         'message' => $errors
            //     ], 200);
    		// }
    	}
    }
}
