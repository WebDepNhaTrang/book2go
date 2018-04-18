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

