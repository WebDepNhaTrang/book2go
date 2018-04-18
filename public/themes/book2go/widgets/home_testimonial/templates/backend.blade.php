<div class="form-group">
    <label for="widget-name">{{ __('Number Section') }}</label>
    <input type="text" class="form-control" name="number" value="{{ $config['number'] }}">
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Title Section') }}</label>
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show title this section, please go to <code><a target="_blank" href="{{ url('/admin/categories/edit/2') }}">Menu -> Blog -> Categories -> Khách Hàng Đánh Giá</a></code> and fix the<code>"description"</code>!
        </span>
    </div>
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Content Section') }}</label>
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show content this section, please go to <code><a target="_blank" href="{{ url('/admin/posts/list/2') }}">Menu -> Blog -> List Posts in Khách Hàng Đánh Giá</a></code> and fix the <code>name, description, image</code>!
        </span>
    </div>
</div>