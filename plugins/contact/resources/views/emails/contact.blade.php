
<h3>{{ trans('plugins.contact::contact.contact_sent_from') }} <strong>{{ $name }}</strong></h3>
<p>{{ trans('plugins.contact::contact.email.header') }}: {{ $email }}<p>
<p>{{ trans('plugins.contact::contact.address') }}: {{ $address }}<p>
<p>{{ trans('plugins.contact::contact.phone') }}: {{ $phone }}<p>
<p>{{ trans('plugins.contact::contact.message') }}: {{ $content }}<p><br>
<p><strong>{{ trans('plugins.contact::contact.sent_from') }} <a href="{{ route('public.index') }}">{{ setting('site_title') }}</a>.</strong></p>
