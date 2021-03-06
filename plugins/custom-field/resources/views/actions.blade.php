<div class="widget meta-boxes form-actions form-actions-default action-{{ $direction or 'horizontal' }}">
    <div class="widget-title">
        <h4>
            <span>{{ __('Publish') }}</span>
        </h4>
    </div>
    <div class="widget-body">
        <div class="btn-set">
            @if (isset($object))
                <a href="{{ route('custom-fields.export', ['id' => $object->id]) }}"
                   class="btn btn-sm purple"
                   download="{{ $object->title }}">
                    <i class="fa fa-download"></i>
                    {{ trans('plugins.custom-field::base.export') }}
                </a>
            @endif
            <button class="btn btn-primary" type="submit">
                <i class="fa fa-check"></i> {{ __('Save') }}
            </button>
            <button class="btn btn-success"
                    type="submit"
                    name="apply"
                    value="1">
                <i class="fa fa-check"></i> {{ __('Save & continue') }}
            </button>
        </div>
    </div>
</div>
<div id="waypoint"></div>
<div class="form-actions form-actions-fixed-top hidden">
    {!! AdminBreadcrumb::render() !!}
    <div class="btn-set">
        @if (isset($object))
            <a href="{{ route('custom-fields.export', ['id' => $object->id]) }}"
               class="btn btn-sm purple"
               download="{{ $object->title }}">
                <i class="fa fa-download"></i>
                {{ trans('plugins.custom-field::base.export') }}
            </a>
        @endif
        <button class="btn btn-primary" type="submit">
            <i class="fa fa-check"></i> {{ __('Save') }}
        </button>
        <button class="btn btn-success"
                type="submit"
                name="apply"
                value="1">
            <i class="fa fa-check"></i> {{ __('Save & continue') }}
        </button>
    </div>
</div>
