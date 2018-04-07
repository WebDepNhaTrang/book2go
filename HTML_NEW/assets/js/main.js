$(function () {
    'use strict';

    // Bootstrap Datepicker Checkin Checkout in Homepage
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
});