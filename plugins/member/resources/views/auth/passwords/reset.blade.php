<div class="container" id="forgot-pass">
    <div class="row">
        <div class="col-md-8 col-md-offset-2 forgot-pass-content">
            <div class="panel panel-default">
                <div class="panel-heading">{{ __('Thay đổi mật khẩu') }}</div>

                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="POST" action="{{ route('public.member.password.email') }}">
                        {{ csrf_field() }}

                        <input type="hidden" name="token" value="{{ $token }}">

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">{{ __('Địa chỉ Email') }}</label>
                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control" name="email" value="{{ $email or old('email') }}" autofocus>
                                {!! Form::error('email', $errors) !!}
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="col-md-4 control-label">{{ __('Mật khẩu mới') }}</label>
                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control" name="password">
                                {!! Form::error('password', $errors) !!}
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
                            <label for="password-confirm" class="col-md-4 control-label">{{ __('Xác nhận mật khẩu') }}</label>
                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                                {!! Form::error('password_confirmation', $errors) !!}
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Đổi Mật Khẩu') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
