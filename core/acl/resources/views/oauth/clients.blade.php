@extends('core.base::layouts.master')

@section('content')
    <div style="max-width: 800px; margin: 0 auto;">
        <div class="widget meta-boxes">
            <div class="widget-title">
                <h4><span>{{ __('OAuth Clients') }}</span></h4>
            </div>
            <div class="widget-body">
                <a data-fancybox data-type="ajax" data-src="{{ route('oauth.clients.create') }}" href="javascript:;" class="btn btn-info">{{ __('Create New Client') }}</a>
                <br>
                <br>
                {!! $table->renderTable() !!}
            </div>
        </div>
    </div>
@stop
