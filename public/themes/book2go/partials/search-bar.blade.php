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
                    <!-- <div class="col-xs-12 col-sm-12 col-md-4 text-center tab-content-left">
                        <input id="location" type="text" class="input-small form-control" name="local" placeholder="Nhập địa điểm ..."/>
                    </div> -->
                    <div class="col-xs-12 col-md-12 tab-content-right">
                        <form id="search-hotel" action="{{ route('book2go.search-result') }}" method="get" class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 arrival-date">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" style="background-color: #FFFFFF;" value="" class="input-small form-control" placeholder="Nhập địa điểm ...">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-search"></i></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-5 arrival-date">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" id="daterange-hotel" style="text-align: center;cursor:pointer;" class="input-small form-control" value="" />
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                        <input type="hidden" name="h-cin" value="">
                                        <input type="hidden" name="h-cout" value="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 search-block">
                                <button class="btn btn-primary" type="submit">TÌM <i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="tab-pane" id="pills-tour" role="tabpanel" aria-labelledby="pills-tour-tab">
                <div class="row">
                    <div class="col-xs-12 col-md-12 tab-content-right">
                        <form id="search-tour" action="#" class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 arrival-date">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" style="background-color: #FFFFFF;" name="local" value="" class="input-small form-control" placeholder="Nhập địa điểm ...">
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-search"></i></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-5 arrival-date">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" name="daterange-tour" style="text-align: center;cursor:pointer;" class="input-small form-control" value="" />
                                        <div class="input-group-append">
                                            <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-3 search-block">
                                <button class="btn btn-primary" type="submit">TÌM <i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</section>

<!-- End / Nav Booking -->