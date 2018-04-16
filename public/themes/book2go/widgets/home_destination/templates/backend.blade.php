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
    <?php 
        $hotels = get_all_hotels(['id', 'name']);
        // print_r($hotels);
    ?>
    <select class="form-control" multiple='multiple' name="" id="">
        @foreach($hotels as $hotel)
            <option value="{{ $hotel['id'] }}">{{ $hotel['name'] }}</option>
        @endforeach
    </select>
</div>

