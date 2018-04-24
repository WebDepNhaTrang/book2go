<div class="form-group">
    <label for="widget-name">{{ __('Number Section') }}</label>
    <input type="text" class="form-control" name="number" value="{{ $config['number'] }}">
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Title & Des Section') }}</label>
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show title this section, please go to <code><a target="_blank" href="{{ url('/admin/categories/edit/3') }}">Menu -> Blog -> Categories -> Tin Tức Du Lịch</a></code> and fix the<code>"name & description"</code>!
        </span>
    </div>
</div>
<div class="form-group">
    <label for="widget-name">{{ __('Content Section') }}</label>
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show content this section, please go to <code><a target="_blank" href="{{ url('/admin/posts/list/3') }}">Menu -> Blog -> List Posts in Tin Tức Du Lịch</a></code> and fix the <code>item</code>!
        </span>
    </div>
</div>