<section id="ks-detail">
    <div class="ks-detail-banner">
        <ul class="sub-banner photo-gallery">
            @php
                $galleries = gallery_meta_data($post->id, HOTEL_MODULE_SCREEN_NAME);
            @endphp
            @if($galleries)
                @foreach($galleries as $key => $gallery)
                    <li class="image-{{$key}} @if($key > 5) d-none @endif">
                        <img class="" src="{{ url($gallery['img']) }}" alt="">
                    </li>
                @endforeach
                <div class="map-image" data-toggle="modal" data-target="#modal-map">
                    <img class="" src="{{ config('plugins.servicer.servicer.img-map') }}" alt="">
                </div>
            @endif
        </ul>
    </div>

    <!-- Modal Google Map -->
    <div class="modal fade" id="modal-map" tabindex="-1" role="dialog" aria-labelledby="modal-map" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">{{$post->name}}</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="map-canvas"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>

    <div class="ks-info container">
        <div class="row">
            <div class="col-md-3 ks-info-1">
                <img class="img-fluid" src="{{ get_object_image($post->image, 'featured') }}" alt="{{$post->name}}">
            </div>
            <div class="row col-md-9 ks-info-2">
                <div class="col-md-8">
                    <h1 class="ks-name">{{$post->name}}</h1>
                    {!! render_number_star($post->star) !!}
                    <p class="address">{{$post->address}}</p>
                    <p class="tel">Tel: {{$post->phone}}</p>

                    {!! render_facebook_social(route('public.single', $post->slug)) !!}
                   
                </div>
                @if($promotion)
                    <div class="col-md-4">
                        <button type="button" class="btn btn-sm btn-danger" disabled>{{$promotion->promotion_name}}</button>
                        <label class="badge badge-info">Từ {{date('d/m/Y', strtotime($promotion->start_date)) }} đến {{date('d/m/Y', strtotime($promotion->end_date)) }}</label>
                    </div>
                @endif
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
    <div class="ks-datphong container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 ks-datphong-title">
                <h5 class="mb-0">Kiểm tra phòng</h5>
            </div>
            <div class="col-md-12 px-3 py-3 ks-datphong-content">
                <p>Chọn ngày để kiểm tra phòng trống</p>
                
                <form id="check-room-type" action="{{route('public.single', ['slug' => $post->slug])}}" class="row">
                    <div class="col-xs-12 col-sm-8 col-md-8 arrival-date">
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
                    
                    <div class="col-xs-12 col-sm-4 col-md-4 search-block">
                        <button class="btn btn-primary" type="submit">Kiểm tra <i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="ks-room-list container">
        <div class="row">
            @if (isset($errors) && count($errors))
                <div class="alert alert-danger">
                    @foreach ($errors->all() as $error)
                        <p>{{ $error }}</p>
                    @endforeach
                </div>
            @endif
            
            <table class="table d-none d-md-table">
                <thead>
                    <tr class="table-header">
                        <th scope="col">Loại phòng</th>
                        <th scope="col">Chi tiết</th>
                        <th scope="col">Sức chứa</th>

                        @if($checkin && $checkout && !$locker)
                            <th scope="col">Giá phòng/đêm</th>
                            <th scope="col">Đặt phòng</th>
                        @else
                            <th scope="col"></th>
                        @endif

                    </tr>
                </thead>
                <tbody>
                    @foreach($room_types as $key => $room)
                        <tr>
                            <td class="col-room-type">
                                <div class="list-pics">
                                    <span class="room-type">{{$room->name}}</span>
                                    @php
                                        $galleries_room = gallery_meta_data($room->id, ROOM_TYPE_MODULE_SCREEN_NAME);
                                    @endphp
                                    <ul class="clearfix photo-gallery">
                                        <li><img src="{{ get_object_image($room->image, 'featured') }}"/></li>
                                        @if($galleries)
                                            @foreach($galleries_room as $key2 => $value2)
                                                <li class="d-none"><img src="{{ url($value2['img']) }}"/></li>
                                            @endforeach
                                        @endif
                                        <!-- <li class="d-none"><img src="{{ get_object_image($room->image, 'featured') }}"/></li> -->
                                    </ul>
                                    <p class="view-all-pic">Xem tất cả ảnh</p>
                                </div>
                            </td>
                            <td class="col-chi-tiet">
                                <div>
                                    {!! $room->content !!}
                                </div>
                            </td>
                            <td class="col-suc-chua">
                                <div>
                                    <span>{{$room->adults}} x </span><i class="fas fa-user"></i><br>
                                    <span>{{$room->children}} x </span><i class="fas fa-child"></i>
                                </div>
                            </td>
                            @if($locker)
                                <td class="col-alert-notification">
                                    <p class="alert alert-danger">Vui lòng liên hệ </br>{{ setting('contact_hotline') }}</p>
                                </td>
                            @elseif($checkin && $checkout)
                                <td class="col-gia-phong">
                                    @if($promotion_by_date)
                                        <div class="tiet-kiem-ngay">
                                            <span>{{$promotion_by_date->promotion_name}}</span>
                                        </div>
                                        <div class="price-through">
                                            {!! number_format_price($room->price) !!}
                                        </div>
                                        <div class="price-show">
                                            {!! number_format_price($room->price - ($room->price * $promotion_by_date->cost / 100)) !!}
                                        </div>
                                    @else
                                        <div class="price-show">
                                            {!! number_format_price($room->price) !!}
                                        </div>
                                    @endif
                                    
                                </td>
                                
                                <td class="col-dat-phong">
                                    @if($key == 0)
                                        <div class="gia-thap-nhat">
                                            <span class="">Giá thấp nhất</span>
                                        </div>
                                    @endif
                                    <form action="{{route('public.booking')}}" method="get">
                                        <input type="hidden" name="checkin" value="{{$checkin}}">
                                        <input type="hidden" name="checkout" value="{{$checkout}}">
                                        <input type="hidden" name="id" value="{{$room->id}}">

                                        <div class="col-12 float-left">
                                            <select class="form-control mt-4" name="number_of_servicer">
                                                @for($i = 1; $i <= $room->number_of_servicer; $i++)
                                                    <option value="{{$i}}">{{$i}}</option>
                                                @endfor
                                            </select>
                                        </div>
                                        <div class="col-12 float-right">
                                            <button type="submit" class="btn btn-sm btn-datphong">Đặt phòng ngay</button>
                                            @if(!Auth::guard('member')->check() && setting('allow_discount_membership'))
                                                <div class="dang-nhap-giam">
                                                    <p>{!! setting('member_discounts_name') !!}</p>
                                                </div>
                                            @endif
                                            <div class="con-trong">
                                                <span>Còn trống {{$room->number_of_servicer}} phòng</span>
                                            </div>
                                        </div>
                                    </form>    
                                </td>
                            @else
                                <td class="col-alert-notification">
                                    <span class="alert alert-danger">Vui lòng chọn ngày</span>
                                </td>
                            @endif
                        </tr>
                    @endforeach
                </tbody>
            </table>
            <table class="table d-md-none">
                <thead>
                    <tr>
                        <th scope="col">Loại phòng</th>
                        @if($checkin && $checkout)
                        <th scope="col">Thông tin</th>
                        @else
                            <th scope="col"></th>
                        @endif
                    </tr>
                </thead>
                <tbody>
                    @foreach($room_types as $room)
                    <tr>
                        <td class="col-room-type-mb">
                            <div>
                                <div>
                                    <span class="room-type">{{$room->name}}</span>
                                    @php
                                        $galleries_room = gallery_meta_data($room->id, ROOM_TYPE_MODULE_SCREEN_NAME);
                                    @endphp
                                    <ul class="clearfix photo-gallery">
                                        <li><img src="{{ get_object_image($room->image, 'featured') }}"/></li>
                                        @if($galleries)
                                            @foreach($galleries_room as $key2 => $value2)
                                                <li class="d-none"><img src="{{ url($value2['img']) }}"/></li>
                                            @endforeach
                                        @endif
                                        
                                    </ul>
                                    <p class="view-all-pic">Xem tất cả ảnh</p>
                                </div>
                            </div>
                            <div>
                                <span class="badge">Còn trống {{$room->number_of_servicer}} phòng</span>
                            </div>
                        </td>
                        @if($locker)
                            <td class="col-alert-notification">
                                <p class="alert alert-danger">Vui lòng liên hệ </br>{{ setting('contact_hotline') }}</p>
                            </td>
                        @elseif($checkin && $checkout)
                        <td class="col-chi-tiet-mb" style="width: 50%;">
                            <form action="{{route('public.booking')}}" method="get">
                                <input type="hidden" name="checkin" value="{{$checkin}}">
                                <input type="hidden" name="checkout" value="{{$checkout}}">
                                <input type="hidden" name="id" value="{{$room->id}}">
                                <div>
                                    <span>Sức chứa: 
                                        <div>
                                            <span>{{$room->adults}} x </span><i class="fas fa-user"></i><br>
                                            <span>{{$room->children}} x </span><i class="fas fa-child"></i>
                                        </div>
                                    </span>
                                </div>
                                <div>
                                    <span>Giá phòng:
                                        @if($promotion)
                                        <div class="price-through">
                                            <span class="price">{{$room->price}} </span>
                                            <span class="currency">₫</span>
                                        </div>
                                        
                                        <div class="price-show">
                                            <span class="price">{!! number_format_price($room->price - ($room->price * $promotion->cost / 100)) !!} </span>
                                            <span class="currency">₫</span>
                                        </div>
                                        @else
                                        <div class="price-show">
                                            <span class="price">{{$room->price}} </span>
                                            <span class="currency">₫</span>
                                        </div>
                                        @endif
                                    </span>
                                </div>
                                <div>
                                    <span>Số lượng:
                                        <select class="form-control mt-4" name="number_of_servicer">
                                            @for($i = 1; $i <= $room->number_of_servicer; $i++)
                                                <option value="{{$i}}">{{$i}}</option>
                                            @endfor
                                        </select>
                                    </span>
                                </div>
                                <button type="submit" class="btn btn-sm btn-datphong">Đặt phòng ngay</button>
                            </form>
                        </td>
                        
                        @else
                            <td class="col-alert-notification">
                                <span class="alert alert-danger">Vui lòng chọn ngày</span>
                            </td>
                        @endif
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
</section>

<script>
    //popup google map
    //59.76522, 18.35002
    var center = new google.maps.LatLng({{ $post->lat_long }});

    function initialize() {

        var mapOptions = {
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: center
        };

        map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        var marker = new google.maps.Marker({
            map: map,
            position: center
        });
    }
    initialize();
</script>
