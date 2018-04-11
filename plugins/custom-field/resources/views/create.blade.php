@extends('core.base::layouts.master')

@section('javascript')
    @include('plugins.custom-field::_script-templates.edit-field-group-items')
@endsection

@section('content')
    {!! Form::open([
        'class' => 'form-update-field-group',
        'novalidate' => 'novalidate',
        'url' => request()->fullUrl(),
    ]) !!}
    <textarea name="field_group[rules]"
              id="custom_fields_rules"
              class="form-control hidden"
              style="display: none !important;">{!! old('field_group.rules', '[]') !!}</textarea>
    <textarea name="field_group[group_items]"
              id="custom_fields"
              class="form-control hidden"
              style="display: none !important;">{!! old('field_group.group_items', '[]') !!}</textarea>
    <textarea name="field_group[deleted_items]"
              id="deleted_items"
              class="form-control hidden"
              style="display: none !important;">{!! old('field_group.deleted_items', '[]') !!}</textarea>
    <div class="row">
        <div class="col-md-9">
            <div class="widget meta-boxes">
                <div class="widget-title">
                    <h4>{{ __('Basic information') }}</h4>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <label class="control-label">
                            <b class="required">{{ __('Title') }}</b>
                        </label>
                        <input required type="text"
                               name="field_group[title]"
                               class="form-control"
                               value="{{ old('field_group.title') }}"
                               autocomplete="off">
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <b>{{ __('Status') }}</b>
                        </label>
                        {!! Form::select('field_group[status]', [
                           1 => 'Active',
                           0 => 'Disable',
                        ], old('field_group.status'), ['class' => 'form-control']) !!}
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <b>{{ __('Order') }}</b>
                        </label>
                        <input required type="number"
                               name="field_group[order]"
                               class="form-control"
                               value="{{ old('field_group.order', 0) }}"
                               autocomplete="off">
                    </div>
                </div>
            </div>
            <div class="widget meta-boxes">
                <div class="widget-title">
                    <h4>
                        <i class="fa fa-info-circle font-dark"></i>
                        {{ trans('plugins.custom-field::base.form.rules.rules') }}
                    </h4>
                </div>
                <div class="box-body">
                    <div class="custom-fields-rules">
                        <label class="control-label mb15">
                            <b>{{ trans('plugins.custom-field::base.form.rules.rules_helper') }}</b>
                        </label>
                        <div class="line-group-container"></div>
                        <div class="line">
                            <p class="mt20"><b>{{ trans('plugins.custom-field::base.form.rules.or') }}</b></p>
                            <a class="location-add-rule-or location-add-rule btn btn-info" href="#">
                                {{ trans('plugins.custom-field::base.form.rules.add_rule_group') }}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
    <div class="widget meta-boxes">
        <div class="widget-title">
            <h4>
                <i class="fa fa-info-circle font-dark"></i>
                {{ trans('plugins.custom-field::base.form.field_items_information') }}
            </h4>
        </div>
        <div class="box-body">
            <div class="form-group">
                @include('plugins.custom-field::_partials.field-items-list')
            </div>
        </div>
    </div>
        </div>
        <div class="col-md-3 right-sidebar">
            @include('plugins.custom-field::actions')
        </div>
    </div>
    {!! Form::close() !!}
@endsection

@push('footer')
    @php
        Assets::addAppModule(['form-validation']);
    @endphp
    {!! JsValidator::formRequest(\Botble\CustomField\Http\Requests\CreateFieldGroupRequest::class) !!}
@endpush
