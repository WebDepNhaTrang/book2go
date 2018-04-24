<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <link rel="canonical" href="{{ url('/') }}">
        <meta http-equiv="content-language" content="en">

        {!! Theme::header() !!}
        
        <style type="text/css">
            .loader {
              display: inline-block;
              width: 30px;
              height: 30px;
              position: fixed;
              border: 4px solid #ff6c00;
              top: 50%;
              animation: loader 2s infinite ease;
              z-index: 9999;
            }

            .loader-inner {
              vertical-align: top;
              display: inline-block;
              width: 100%;
              background-color: #ff6c00;
              animation: loader-inner 2s infinite ease-in;
            }

            @keyframes loader {
              0% {
                transform: rotate(0deg);
              }
              
              25% {
                transform: rotate(180deg);
              }
              
              50% {
                transform: rotate(180deg);
              }
              
              75% {
                transform: rotate(360deg);
              }
              
              100% {
                transform: rotate(360deg);
              }
            }

            @keyframes loader-inner {
              0% {
                height: 0%;
              }
              
              25% {
                height: 0%;
              }
              
              50% {
                height: 100%;
              }
              
              75% {
                height: 100%;
              }
              
              100% {
                height: 0%;
              }
            }
            .pre-loader{
                width: 100%;
                height: 100%;
                position: fixed;
                background-color: rgba(255, 108, 0, 0.5);
                z-index: 9999;
                display: none;
            }
        </style>
    </head>
    <body>
        <div class="text-center pre-loader">
             <!-- Loading square for squar.red network -->
            <span class="loader"><span class="loader-inner"></span></span>
        </div>
         
        <div id="wrapper">
            {!! Theme::partial('header') !!}

            {!! Theme::content() !!}

            {!! Theme::partial('footer') !!}

        </div>

        {!! Theme::footer() !!}
        <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
        
        <script type="text/x-custom-template" id="message_after_booking">
            <div class="alert alert-info">__message__ <br/>Chúng tôi sẽ chuyển về trang chủ sau 
                <span id="timeLeft">10</span></div>
        </script>
        <script type="text/javascript">
            $(document).ready(function(){

                function getParameterByName(name, url) {
                    if (!url) url = window.location.href;
                    name = name.replace(/[\[\]]/g, "\\$&");
                    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                        results = regex.exec(url);
                    if (!results) return null;
                    if (!results[2]) return '';
                    return decodeURIComponent(results[2].replace(/\+/g, " "));
                }

                $("form#booking-available").validate({
                    rules:
                    {
                        'fullname': {
                            required: true
                        },
                        'phone': {
                            required: true
                        },
                        'email': {
                            required: true,
                            email: true
                        },
                        'address': {
                            required: true
                        }
                    },
                    messages:
                    {
                        
                    },
                    submitHandler: submitForm 
                });

                function submitForm()
                { 
                    $this = $('form#booking-available');
                    var dataForm = $this.serializeArray();
                    var params = ['checkin', 'checkout', 'id', 'children', 'adults', 'number_of_servicer'];
                    $.each(params, function(i, v){
                        dataForm.push(
                                {
                                    name: v,
                                    value: getParameterByName(v)
                                }
                        );
                    });

                    $.ajax({
                        type : 'POST',
                        url  : $this.attr('action'),
                        data : $.param(dataForm),
                        dataType: 'json',
                        beforeSend: function()
                        { 
                            $('.pre-loader').fadeIn();
                            $this.find('button').attr('disabled', true).html('Đang xác thực');
                        },
                        success :  function(response)
                        {   
                            if(response.error == false){
                                $('.pre-loader').fadeOut();
                                // Display a success toast, with a title
                                toastr.success(response.message);
                                var template = $('#message_after_booking').html().replace(/__message__/gi, response.message || '');
                                $('.pageBooking').html(template);

                                $this.find('button').attr('disabled', false);
                                // Your delay in milliseconds
                                window.setInterval(function() {
                                    var timeLeft    = $("#timeLeft").html();                                
                                    if(eval(timeLeft) == 0){
                                            window.location= ($('a.navbar-brand').attr('href'));                 
                                    }else{              
                                        $("#timeLeft").html(eval(timeLeft)- eval(1));
                                    }
                                }, 1000); 
                            }else{
                                // Display a success toast, with a title
                                toastr.error(response.message);
                                $this.find('button').attr('disabled', true).html('Opp!!!');
                            }
                            
                        },
                        error: function() {
                            alert( "error" );
                        },
                        always: function() {
                            alert( "complete" );
                        }
                    });
                    return false;
                }
            });
        </script>
    </body>
</html>