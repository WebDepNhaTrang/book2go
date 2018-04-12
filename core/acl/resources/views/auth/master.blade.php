@extends('core.base::layouts.base')

@section('body-class')
    login
@stop

@section ('page')
    <div class="content">
        @yield('content')
    </div>
    <div class="copyright"> {!! trans('core.base::layouts.copyright', ['year' => Carbon::now()->format('Y'), 'company' => config('core.base.general.base_name'), 'version' => config('core.base.general.version')]) !!} </div>
@stop
