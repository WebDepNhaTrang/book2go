<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="image" class="control-label">Image Section</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box">
            <input type="hidden" name="destination_image" value="{{ __($config['destination_image']) }}" class="image-data">
                <div class="preview-image-wrapper">
                    <img src="{{ ($config['destination_image'] == '') ? 'http://localhost:8000/vendor/core/images/default-image-150x150.png' : __($config['destination_image']) }}" alt="preview image" class="preview_image" width="150">
                    <a class="btn_remove_image" title="Remove image">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            <div class="image-box-actions">
                <a class="btn_gallery" data-result="image" data-action="select-image">
                    Choose image
                </a>
            </div>
        </div>
    </div>
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Number Section') }}</label>
    <input type="text" class="form-control" name="number" value="{{ $config['number'] }}">
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Title Section') }}</label>
    <input type="text" class="form-control" name="title" value="{{ $config['title'] }}">
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Sub Title Section') }}</label>
    <input type="text" class="form-control" name="sub_title" value="{{ $config['sub_title'] }}">
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Content Section') }}</label>
    {!! Form::select('hotels[]', app(Botble\Servicer\Repositories\Interfaces\ServiceTypeInterface::class)->all()->pluck('name', 'id')->all(), $config['hotels'], ['multiple' => true, 'class' => 'form-control']) !!}
</div>

