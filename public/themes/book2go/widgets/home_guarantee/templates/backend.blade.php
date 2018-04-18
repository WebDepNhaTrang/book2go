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
    <div class="help-ts"><i class="fa fa-info-circle"></i>
        <span>
            To show content this section, please go to <code><a href="{{ url('/admin/block') }}" target="_blank">Menu -> Static Blocks</a></code> and fix the "description" , "content" of the <code>GUARANTEE BLOCK</code>!
        </span>
    </div>
</div>
