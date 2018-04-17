<div class="form-group form-group-no-margin @if ($errors->has($options['name_field'])) has-error @endif">
    <label class="{{$options['label_attr']['class']}}">{{$options['label']}}</label>
    <div class="multi-choices-widget list-item-checkbox">
        @if(isset($options['choices']) && (is_array($options['choices']) || $options['choices'] instanceof \Illuminate\Support\Collection))
            <ul class="row">
            	@php
            	/**
            	 * @var string $value
            	 */
            	$value = isset($options['value']) ? (array)$options['value'] : [];
            	@endphp
                @foreach($options['choices'] as $choice)
                    <li class="col-md-3" value="{{ $choice->id or '' }}"
                        {{ $choice->id == $value ? 'selected' : '' }}>
                        {!! Form::customCheckbox([
                            [
                                $name, $choice->id, $choice->name, in_array($choice->id, $value),
                            ]
                        ]) !!}
                    </li>
                @endforeach
            </ul>
        @endif
    </div>
</div>
