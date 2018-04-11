<div class="modal-box-container">
    {!! Form::open(['url' => route('oauth.clients.delete.post', $client->id)]) !!}
        {!! method_field('DELETE') !!}
        <div class="modal-title">{{ __('Confirm delete client #:id', ['id' => $client->id]) }}</div>
        <div class="modal-body">
            <p>
                {{ __('Do you really want to delete this client ":name"?', ['name' => $client->name]) }}
            </p>
        </div>
        <div class="modal-footer">
            <a href="javascript:;" class="btn btn-primary" data-fancybox-close>{{ __('No')  }}</a>
            <button type="submit" class="btn btn-danger">{{ __('Yes, let\'s delete it!') }}</button>
        </div>
    {!! Form::close() !!}
</div>