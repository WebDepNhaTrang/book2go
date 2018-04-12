<div class="image-box">
    <input type="hidden" name="{{ $name }}" value="{{ $value }}" class="image-data">
    <div class="preview-image-wrapper">
        <img src="{{ get_object_image($value, array_get($attributes, 'allow_thumb', true) == true ? 'thumb' : null) }}" alt="preview image" class="preview_image" width="150">
        <a class="btn_remove_image" title="{{ trans('core.base::forms.remove_image') }}">
            <i class="fa fa-times"></i>
        </a>
    </div>
    <div class="image-box-actions">
        <a class="btn_gallery" data-result="{{ $name }}" data-action="{{ $attributes['action'] or 'select-image' }}">
            {{ trans('core.base::forms.choose_image') }}
        </a>
    </div>
</div>
