<div class="widget meta-boxes">
    <div class="widget-title">
        <h4>
            <span>{{ trans('plugins.contact::contact.form.status') }}</span>
        </h4>
    </div>
    <div class="widget-body">
        <input type="checkbox" class="styled" name="is_read" id="is_read" value="1" @if ($contact->is_read == 1) checked="checked" @endif>
        <label for="is_read">{{ trans('plugins.contact::contact.form.is_read') }}</label>
        {!! Form::error('is_read', $errors) !!}
    </div>
</div>