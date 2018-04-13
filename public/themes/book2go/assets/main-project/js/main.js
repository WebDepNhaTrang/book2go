$(document).ready(function() {

    // ===== Bootstrap Datepicker Checkin Checkout in Homepage ==== 
    $("#checkIn").datepicker({
        format: "dd-mm-yyyy",
        todayBtn: true,
        autoclose: true,
        startDate: new Date()
    })
    .on("changeDate", function(e) {
        var checkInDate = e.date, $checkOut = $("#checkOut");    
        checkInDate.setDate(checkInDate.getDate() + 1);
        $checkOut.datepicker("setStartDate", checkInDate);
        $checkOut.datepicker("setDate", checkInDate).focus();
    });

    $("#checkOut").datepicker({
        format: "dd-mm-yyyy",
        todayBtn: true,
        autoclose: true,
        startDate: new Date()
    });

    // ===== Bootstrap Datepicker Checkintour Checkouttour in Homepage ==== 
    $("#checkInTour").datepicker({
        format: "dd-mm-yyyy",
        todayBtn: true,
        autoclose: true,
        startDate: new Date()
    })
    .on("changeDate", function(e) {
        var checkInDate = e.date, $checkOut = $("#checkOutTour");    
        checkInDate.setDate(checkInDate.getDate() + 1);
        $checkOut.datepicker("setStartDate", checkInDate);
        $checkOut.datepicker("setDate", checkInDate).focus();
    });

    $("#checkOutTour").datepicker({
        format: "dd-mm-yyyy",
        todayBtn: true,
        autoclose: true,
        startDate: new Date()
    });

    // ===== Scroll to Top ==== 
    $(window).scroll(function() {
        if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
            $('#return-to-top').fadeIn();    // Fade in the arrow
        } else {
            $('#return-to-top').fadeOut();   // Else fade out the arrow
        }
    });
    $('#return-to-top').click(function() {      // When arrow is clicked
        $('body,html').animate({
            scrollTop : 0                       // Scroll to top of body
        }, 500);
    });

    // ===== Tooltip cho phần giá tổng ==== 
    $('[data-toggle="tooltip"]').tooltip();

    // ===== Slide Section Đối Tác ==== 
    $('.customer-logos').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1500,
        arrows: false,
        dots: false,
            pauseOnHover: false,
            responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });


    // Popup gallery for detail room type
    $('.photo-gallery li img').click(function() {
        $(this).parent().parent().find("li").picEyes();
    });

    


    // Popup for login form
    $("#modal_trigger").leanModal({
        top: 100,
        overlay: 0.6,
        closeButton: ".modal_close"
    });

    $(function() {
        // Calling Login Form
        $("#login_form").click(function() {
                $(".social_login").hide();
                $(".user_login").show();
                return false;
        });
        // Calling Register Form
        $("#register_form").click(function() {
                $(".social_login").hide();
                $(".user_register").show();
                $(".header_title").text('Register');
                return false;
        });
        // Going back to Social Forms
        $(".back_btn").click(function() {
                $(".user_login").hide();
                $(".user_register").hide();
                $(".social_login").show();
                $(".header_title").text('Login');
                return false;
        });
    });
});