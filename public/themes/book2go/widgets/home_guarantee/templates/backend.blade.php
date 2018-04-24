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
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="image" class="control-label">Image Block1</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box">
            <input type="hidden" name="image_block1" value="{{ __($config['image_block1']) }}" class="image-data">
                <div class="preview-image-wrapper">
                    <img src="{{ ($config['image_block1'] == '') ? 'http://localhost:8000/vendor/core/images/default-image-150x150.png' : __($config['image_block1']) }}" alt="preview image" class="preview_image" width="150">
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
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="image" class="control-label">Image Block2</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box">
            <input type="hidden" name="image_block2" value="{{ __($config['image_block2']) }}" class="image-data">
                <div class="preview-image-wrapper">
                    <img src="{{ ($config['image_block2'] == '') ? 'http://localhost:8000/vendor/core/images/default-image-150x150.png' : __($config['image_block2']) }}" alt="preview image" class="preview_image" width="150">
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
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="image" class="control-label">Image Block3</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box">
            <input type="hidden" name="image_block3" value="{{ __($config['image_block3']) }}" class="image-data">
                <div class="preview-image-wrapper">
                    <img src="{{ ($config['image_block3'] == '') ? 'http://localhost:8000/vendor/core/images/default-image-150x150.png' : __($config['image_block3']) }}" alt="preview image" class="preview_image" width="150">
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
    <label for="widget-name">{{ __('Content Section') }}</label>
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show content this section, please go to <code><a href="{{ url('/admin/block') }}" target="_blank">Menu -> Static Blocks</a></code> and fix the "description" , "content" of the <code>GUARANTEE BLOCK</code>!
        </span>
    </div>
</div>
