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
        <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    </head>
    <body>
        <div id="wrapper">
            {!! Theme::partial('header') !!}

            {!! Theme::content() !!}

            <!-- Section DoiTac -->
            <section id="section-doitac">
                <section class="customer-logos slider container">
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand1.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand2.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand3.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand4.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand1.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand2.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand3.jpg"></div>
                    <div class="slide"><img class="img-fluid" src="./assets/main-project/img/brand4.jpg"></div>
                </section>
            </section>
                <!-- End / Section DoiTac -->

            {!! Theme::partial('footer') !!}

            <!-- Return to Top -->
            <a href="javascript:" id="return-to-top"><i class="fa fa fa-arrow-up"></i></a>
            <!-- End / Return to Top -->
        </div>

        {!! Theme::footer() !!}
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" type="text/javascript"></script>
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
                    dataForm.push(
                            {
                                name: "checkin",
                                value: getParameterByName('checkin')
                            }
                    );
                    dataForm.push(
                            {
                                name: "checkout",
                                value: getParameterByName('checkout')
                            }
                    );
                    dataForm.push(
                            {
                                name: "id",
                                value: getParameterByName('id')
                            }
                    );
                    dataForm.push(
                            {
                                name: "children",
                                value: getParameterByName('children')
                            }
                    );
                    dataForm.push(
                            {
                                name: "adults",
                                value: getParameterByName('adults')
                            }
                    );
                    dataForm.push(
                            {
                                name: "number_of_servicer",
                                value: getParameterByName('number_of_servicer')
                            }
                    );

                    $.ajax({
                        type : 'POST',
                        url  : $this.attr('action'),
                        data : $.param(dataForm),
                        dataType: 'json',
                        beforeSend: function()
                        { 
                            $this.find('button').attr('disabled', true);
                        },
                        success :  function(response)
                        {   
                            // Display a success toast, with a title
                            toastr.success(response.message);
                            $('.pageBooking').html('<div class="alert alert-info">'+ response.message + '</div>\
                            <div class="alert alert-info">Chúng tôi sẽ chuyển về trang chủ sau <span id="timeLeft">10</span></div>');

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