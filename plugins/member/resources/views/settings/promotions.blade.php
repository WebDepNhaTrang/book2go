@extends('core.base::layouts.master')
@section('content')
    <div class="row">
        <div class="col-md-3">
            @foreach ($member_config as $key => $config_arr)
                <h4 style="font-size: 1em;margin: 3px 0; font-weight: bold;">{{ $config_arr['name'] }}</h4>
                <p class="helper" style="margin: 0; font-size: .9em; font-style: italic;">
                    - {{ $config_arr['description'] }}
                </p>
                <hr style="margin:10px 0;">
            @endforeach
        </div>
        <div class="col-md-9">
            {!! Form::open(['route' => ['member.settings.promotion.edit']]) !!}
            <div class="tabbable-custom tabbable-tabdrop">
                <ul class="nav nav-tabs" id="settings-tab">
                    @foreach ($member_config as $tab_id => $tab)
                        <li @if ($loop->first) class="active" @endif>
                            <a data-toggle="tab" href="#{{ $tab_id }}">{{ $tab['name'] }}</a>
                        </li>
                    @endforeach
                </ul>
                <div class="tab-content" style="overflow: inherit">
                    @foreach ($member_config as $tab_id => $tab)
                        <div class="tab-pane @if ($loop->first) active @endif" id="{{ $tab_id }}">
                            @foreach ($tab['settings'] as $key => $setting)
                            <div class="col-md-12">
                                <div class="form-group @if ($errors->has($setting['attributes']['name'])) has-error @endif">
                                    {!! Form::label($setting['attributes']['name'], $setting['label'], ['class' => 'control-label']) !!}
                                    {!! Setting::render($setting) !!}
                                    @if (array_key_exists('helper', $setting))
                                        <span class="help-block" style="font-size: .9em; font-style: italic; color: #929292;">{!! $setting['helper'] !!}</span>
                                    @endif
                                    {!! Form::error($setting['attributes']['name'], $errors) !!}
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            @endforeach
                        </div>
                    @endforeach
                    <div class="clearfix"></div>
                    <div class="text-center">
                        <button type="submit" name="submit" value="save" class="btn btn-info">
                            <i class="fa fa-save"></i> {{ trans('core.base::forms.save') }}
                        </button>
                    </div>
                </div>
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@stop
