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
});