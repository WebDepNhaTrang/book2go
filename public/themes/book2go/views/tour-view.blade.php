<section id="tour-detail">
    <div class="ks-detail-banner">
        <div class="sub-banner">
            <div class="first-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail1.jpg') }}" alt="">
            </div>
            <div class="second-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail2.jpg') }}" alt="">
            </div>
            <div class="third-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail3.jpg') }}" alt="">
            </div>
            <div class="fourth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail4.jpg') }}" alt="">
            </div>
            <div class="fifth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail5.jpg') }}" alt="">
            </div>
            <div class="map-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/img-map.png') }}" alt="">
            </div>
            <div class="sixth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail2.jpg') }}" alt="">
            </div>
        </div>
    </div>
    <div class="ks-info container">
        <div class="row">
            <div class="col-md-3 ks-info-1">
                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/ks-info.jpg') }}" alt="">
            </div>
            <div class="row col-md-9 ks-info-2">
                <div class="col-md-8">
                    <h1 class="ks-name">Tour Bình Ba
                        <span>
                            <img src="{{ Theme::asset()->url('main-project/img/star.png')" border="0" alt="star">
                            <img src="{{ Theme::asset()->url('main-project/img/star.png')" border="0" alt="star">
                            <img src="{{ Theme::asset()->url('main-project/img/star.png')" border="0" alt="star">
                            <img src="{{ Theme::asset()->url('main-project/img/star.png')" border="0" alt="star">
                            <img src="{{ Theme::asset()->url('main-project/img/star.png')" border="0" alt="star">
                        </span>
                    </h1>
                    <p class="address">Cam Ranh, Khánh Hòa</p>
                    <p class="tel">Tel: 0999 999 999</p>
                    <iframe src="https://www.facebook.com/plugins/share_button.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&layout=button_count&size=small&mobile_iframe=true&appId=1635619343393030&width=111&height=20" width="300" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                    <iframe src="https://www.facebook.com/plugins/like.php?href=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&width=450&layout=standard&action=like&size=small&show_faces=false&share=false&height=35&appId=1635619343393030" width="350" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                </div>
                <div class="col-md-4">
                    <button type="button" class="btn btn-sm btn-danger" disabled>Giảm 30% Hôm nay</button>
                </div>
            </div>
        </div>
    </div>
    <div class="ks-des container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 ks-des-title">
                <h5 class="mb-0">Mô tả chi tiết</h5>
            </div>
            <div class="col-md-12 px-3 py-3 ks-des-content">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus tenetur odio laudantium qui, impedit est ex at tempora quisquam mollitia fuga minima molestias! Perferendis adipisci saepe iure? Expedita, ut cum.</p>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus tenetur odio laudantium qui, impedit est ex at tempora quisquam mollitia fuga minima molestias! Perferendis adipisci saepe iure? Expedita, ut cum.</p>
            </div>
        </div>
    </div>
    <div class="tour-dattour container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 tour-dattour-title">
                <h5 class="mb-0">Chọn Số Lượng & Đặt Tour</h5>
            </div>
            <div class="col-md-12 px-3 py-3 tour-dattour-content">
                <p>
                    <span>Giá Tour:</span>
                    <span class="price-through">
                        <span class="price">700,000 </span>
                        <span class="currency">₫ </span>
                    </span>
                    <span class="price-show">
                        <span class="price">600,000 </span>
                        <span class="currency">₫</span>
                        <span>/khách</span>
                    </span>
                </p>
                <form id="search-hotel" action="tour-booking.html" class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4 arrival-date">
                        <div class="form-group mb-0">
                            <label for="arrivalDate" class="control-label">Ngày đi</label>
                            <div class="input-group">
                                <input id="checkIn" type="text" style="cursor:pointer;" name="arrivalDate" value="" placeholder="Check-in" class="input-small form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Ngày về</label>
                            <div class="input-group">
                                <input id="checkOut" type="text" style="cursor:pointer; background-color: #FFFFFF;" name="departureDate" value="" placeholder="Check-out" class="input-small form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-2 col-md-2 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Người lớn</label>
                            <div class="input-group">
                                <select name="" id="" class="form-control">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                    <option value="">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-2 col-md-2 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Trẻ em</label>
                            <div class="input-group">
                                <select name="" id="" class="form-control">
                                    <option value="">0</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                    <option value="">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 search-block">
                        <button class="btn btn-primary" type="submit">Đặt tour</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>