<!-- Nav Booking -->
<section id="section-booking">
    
    <div class="booking-content col-xs-12 col-sm-12 col-md-10">
        <ul class="nav nav-pills" id="pills-tab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="pills-hotel-tab" data-toggle="pill" href="#pills-hotel" role="tab" aria-controls="pills-hotel" aria-expanded="true">Khách sạn & Căn hộ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-tour-tab" data-toggle="pill" href="#pills-tour" role="tab" aria-controls="pills-tour" aria-expanded="true">Tour</a>
            </li>
        </ul>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane show active" id="pills-hotel" role="tabpanel" aria-labelledby="pills-hotel-tab">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-3 text-center tab-content-left">
                        <input id="location" type="text" class="input-small form-control" name="local" placeholder="Nhập địa điểm ..."/>
                    </div>
                    <div class="col-xs-12 col-md-9 tab-content-right">
                        <form id="search-hotel" action="./search-result.html" class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 arrival-date">
                                <div class="form-group">
                                    <!--label for="arrivalDate" class="control-label">CHECK-IN</label-->
                                    <div class="input-group">
                                        <input id="checkIn" type="text" style="cursor:pointer;" name="arrivalDate" value="" placeholder="Check-in" class="input-small form-control">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 departure-date">
                                <div class="form-group">
                                    <!--label for="departureDate" class="control-label">CHECK-OUT</label-->
                                    <div class="input-group">
                                        <input id="checkOut" type="text" style="cursor:pointer; background-color: #FFFFFF;" name="departureDate" value="" placeholder="Check-out" class="input-small form-control">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 search-block">
                                
                                    <button class="btn btn-primary" type="submit">SEARCH <i class="fa fa-search"></i></button>
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="pills-tour" role="tabpanel" aria-labelledby="pills-tour-tab">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-3 text-center tab-content-left">
                        <input type="text" class="input-small form-control" name="local" placeholder="Nhập địa điểm ..."/>
                    </div>
                    <div class="col-xs-12 col-md-9 tab-content-right">
                        <form id="search-tour" action="#" class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4 arrival-date">
                                <div class="form-group">
                                    <!--label for="arrivalDate" class="control-label">CHECK-IN</label-->
                                    <div class="input-group">
                                        <input id="checkInTour" type="text" style="cursor:pointer;" name="arrivalDate" value="" placeholder="Check-in" class="input-small form-control">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 departure-date">
                                <div class="form-group">
                                    <!--label for="departureDate" class="control-label">CHECK-OUT</label-->
                                    <div class="input-group">
                                        <input id="checkOutTour" type="text" style="cursor:pointer; background-color: #FFFFFF;" name="departureDate" value="" placeholder="Check-out" class="input-small form-control">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-4 col-md-4 search-block">
                                <button class="btn btn-primary" type="submit">SEARCH <i class="fa fa-search"></i></button>
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>

<!-- End / Nav Booking -->