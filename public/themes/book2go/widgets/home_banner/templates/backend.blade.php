<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="image" class="control-label">Banner Image</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box">
            <input type="hidden" name="banner_image" value="{{ __($config['banner_image']) }}" class="image-data">
                <div class="preview-image-wrapper">
                    <img src="{{ ($config['banner_image'] == '') ? 'http://localhost:8000/vendor/core/images/default-image-150x150.png' : __($config['banner_image']) }}" alt="preview image" class="preview_image" width="150">
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
