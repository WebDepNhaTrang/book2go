<section id="ks-detail">
    <div class="ks-detail-banner">
        <ul class="sub-banner photo-gallery">
            <li class="first-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail1.jpg') }}" alt="">
            </li>
            <li class="second-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail2.jpg') }}" alt="">
            </li>
            <li class="third-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail3.jpg') }}" alt="">
            </li>
            <li class="fourth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail4.jpg') }}" alt="">
            </li>
            <li class="fifth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail5.jpg') }}" alt="">
            </li>
            <li class="map-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/img-map.png') }}" alt="">
            </li>
            <li class="sixth-image">
                <img class="" src="{{ Theme::asset()->url('main-project/img/ks-detail2.jpg') }}" alt="">
            </li>
        </ul>
    </div>
    <div class="ks-info container">
        <div class="row">
            <div class="col-md-3 ks-info-1">
                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/ks-info.jpg') }}" alt="">
            </div>
            <div class="row col-md-9 ks-info-2">
                <div class="col-md-8">
                    <h1 class="ks-name">The Costa Nha Trang</h1>
                    <span>
                        <img src="{{ Theme::asset()->url('main-project/img/star.png') }}" border="0" alt="star">
                        <img src="{{ Theme::asset()->url('main-project/img/star.png') }}" border="0" alt="star">
                        <img src="{{ Theme::asset()->url('main-project/img/star.png') }}" border="0" alt="star">
                        <img src="{{ Theme::asset()->url('main-project/img/star.png') }}" border="0" alt="star">
                        <img src="{{ Theme::asset()->url('main-project/img/star.png') }}" border="0" alt="star">
                    </span>
                    <p class="address">Nha Trang, Khánh Hòa</p>
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
    <div class="ks-datphong container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 ks-datphong-title">
                <h5 class="mb-0">Kiểm tra phòng</h5>
            </div>
            <div class="col-md-12 px-3 py-3 ks-datphong-content">
                <p>Chọn ngày để kiểm tra phòng trống</p>
                
                <form id="check-room-type" action="#" class="row">
                    <div class="col-xs-12 col-sm-8 col-md-8 arrival-date">
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
                    
                    <div class="col-xs-12 col-sm-4 col-md-4 search-block">
                        <button class="btn btn-primary" type="submit">Kiểm tra <i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="ks-room-list container">
        <div class="row">
            <form action="#" class="col-md-12 px-0">
                <table class="table d-none d-md-table">
                    <thead>
                        <tr class="table-header">
                            <th scope="col">Loại phòng</th>
                            <th scope="col">Chi tiết</th>
                            <th scope="col">Sức chứa</th>
                            <th scope="col">Giá phòng/đêm</th>
                            <th scope="col">SL</th>
                            <th scope="col">Đặt nhiều nhất</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-room-type">
                                <div>
                                    <span class="room-type">Room Single</span>
                                    <ul class="clearfix photo-gallery">
                                        <li><img src="{{ Theme::asset()->url('main-project/img/ks-loaiphong1.jpg') }}"/></li>
                                        <li class="d-none"><img src="{{ Theme::asset()->url('main-project/img/ks-loaiphong2.jpg') }}"/></li>
                                    </ul>
                                </div>
                            </td>
                            <td class="col-chi-tiet">
                                <div>
                                    <p><i class="fas fa-check"></i> Hướng phòng: Vườn</p>
                                    <p><i class="fas fa-check"></i> Diện tích: 100m²</p>
                                    <p><i class="fas fa-check"></i> Ban công/sân thượng</p>
                                    <p><i class="fas fa-check"></i> 1 giường King</p>
                                    <p><i class="fas fa-check"></i> Wifi miễn phí</p>
                                </div>
                            </td>
                            <td class="col-suc-chua">
                                <div>
                                    <span>4 x </span><i class="fas fa-user"></i><br>
                                    <span>2 x </span><i class="fas fa-child"></i>
                                </div>
                            </td>
                            <td class="col-gia-phong">
                                <div class="tiet-kiem-ngay">
                                    <span>Tiết kiệm 10% ngay hôm nay!</span>
                                </div>
                                <div class="price-through">
                                    <span class="price">1,000,000 </span>
                                    <span class="currency">₫</span>
                                </div>
                                <div class="price-show">
                                    <span class="price">900,000 </span>
                                    <span class="currency">₫</span>
                                </div>
                            </td>
                            <td class="col-so-luong">
                                <select class="form-control">
                                    <option value="">0</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                    <option value="">5</option>
                                </select>
                            </td>
                            <td class="col-dat-phong">
                                <div class="gia-thap-nhat">
                                    <span class="">Giá thấp nhất</span>
                                </div>
                                <a href="ks-booking.html" class="btn btn-sm btn-datphong">Đặt phòng ngay</a>
                                <div class="dang-nhap-giam">
                                    <p>Đăng nhập để giảm thêm <strong>200,000</strong> ₫</p>
                                </div>
                                <div class="con-trong">
                                    <span>Còn trống 5 phòng</span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="table d-md-none">
                    <thead>
                            <tr>
                                <th scope="col">Loại phòng</th>
                                <th scope="col">Thông tin</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="col-room-type-mb">
                                    <div>
                                        <div>
                                            <span class="room-type">Room Single</span>
                                            <ul class="clearfix photo-gallery">
                                                <li><img src="{{ Theme::asset()->url('main-project/img/ks-loaiphong1.jpg') }}"/></li>
                                                <li class="d-none"><img src="{{ Theme::asset()->url('main-project/img/ks-loaiphong2.jpg') }}"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div>
                                        <span class="badge">Còn trống 5 phòng</span>
                                    </div>
                                </td>
                                <td class="col-chi-tiet-mb" style="width: 50%;">
                                    <div>
                                        <span>Sức chứa: 
                                            <div>
                                                <span>4 x </span><i class="fas fa-user"></i>
                                                <span>2 x </span><i class="fas fa-child"></i>
                                            </div>
                                        </span>
                                    </div>
                                    <div>
                                        <span>Giá phòng:
                                            <div class="price-through">
                                                <span class="price">1,000,000 </span>
                                                <span class="currency">₫</span>
                                            </div>
                                            <div class="price-show">
                                                <span class="price">900,000 </span>
                                                <span class="currency">₫</span>
                                            </div>
                                        </span>
                                    </div>
                                    <div>
                                        <span>Số lượng:
                                            <select class="form-control">
                                                <option value="">0</option>
                                                <option value="">1</option>
                                                <option value="">2</option>
                                                <option value="">3</option>
                                                <option value="">4</option>
                                                <option value="">5</option>
                                            </select>
                                        </span>
                                    </div>
                                    <a href="ks-booking.html" class="btn btn-sm btn-datphong">Đặt phòng</a>
                                </td>
                            </tr>
                        </tbody>
                </table>
            </form>
        </div>
        <div class="row">
            
        </div>
    </div>
</section>