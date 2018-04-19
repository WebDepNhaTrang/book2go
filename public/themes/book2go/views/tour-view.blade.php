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

                    <h1 class="ks-name">{{$post->name}}</h1>
                    {!! render_number_star($post->star) !!}
                    <p class="address">{{$post->address}}</p>
                    <p class="tel">Tel: {{$post->phone}}</p>
                    <iframe src="https://www.facebook.com/plugins/share_button.php?href={{route('public.single', $post->slug)}}&layout=button_count&size=small&mobile_iframe=true&appId=1635619343393030&width=111&height=20" width="300" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
                    <iframe src="https://www.facebook.com/plugins/like.php?href={{route('public.single', $post->slug)}}&layout=standard&action=like&size=small&show_faces=false&share=false&height=35&appId=1635619343393030" width="350" height="35" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>
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
                {!! $post->content !!}
            </div>
        </div>
    </div>
    <div class="tour-dattour container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 tour-dattour-title">
                <h5 class="mb-0">Chọn Số Lượng & Đặt Tour</h5>
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
                    <div class="col-xs-12 col-sm-4 col-md-6 arrival-date">
                        <div class="form-group mb-0">
                            <label for="arrivalDate" class="control-label">Ngày đi</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" id="daterange-hotel" style="text-align: center;cursor:pointer;" class="input-small form-control" @if($checkin && $checkout) data-start-date="{{date('d/m/Y', strtotime($checkin))}}" data-end-date="{{date('d/m/Y', strtotime($checkout))}}" @endif/>
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                    </div>
                                    <input type="hidden" name="checkin" value="">
                                    <input type="hidden" name="checkout" value="">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xs-12 col-sm-2 col-md-2 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Người lớn</label>
                            <div class="input-group">
                                <select name="" id="adults" class="form-control">
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
                            <label for="departureDate" class="control-label">Trẻ em</label>
                            <div class="input-group">
                                <select name="" class="form-control">
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