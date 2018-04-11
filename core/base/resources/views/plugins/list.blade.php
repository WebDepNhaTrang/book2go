@extends('core.base::layouts.master')
@section('content')
    <div id="plugin-list" class="row">
        @foreach ($list as $plugin)
            <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="plugin-item">
                    <i class="fa fa-puzzle-piece" aria-hidden="true"></i>
                    <h3 class="plugin-name">{{ $plugin->name }}</h3>
                    <p class="plugin-description" title="{{ $plugin->description }}">{{ $plugin->description }}</p>
                    <p class="plugin-author">{{ trans('core.base::system.version') }}: {{ $plugin->version }} | {{ trans('core.base::system.author') }}: <a href="{{ $plugin->url }}" target="_blank">{{ $plugin->author }}</a></p>
                    <p class="plugin-action">
                        <a class="change_plugin_status" data-plugin="{{ $plugin->path }}" data-status="{{ $plugin->status }}">@if ($plugin->status) {{ trans('core.base::system.deactivate') }} @else {{ trans('core.base::system.activate') }} @endif</a>
                    </p>
                </div>
            </div>
        @endforeach
    </div>
@stop
