<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <link href="{{ url('/') }}">
        <meta http-equiv="content-language" content="en">
        

        {!! Theme::header() !!}
    </head>
    <body>
        {!! Theme::partial('header') !!}

        
            {!! Theme::content() !!}
        

        {!! Theme::partial('footer') !!}

        {!! Theme::footer() !!}

        @if (isset($errors) && count($errors))
            <script type="text/javascript">
                
                toastr.error("Đã có lỗi xảy ra, vui lòng kiểm tra lại!!!");
                @foreach ($errors->all() as $error)
                    console.log("{{$error}}");
                @endforeach
            </script>
        @endif
    </body>
</html>