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
                <div class="map-image">
                    <img class="" src="{{ config('plugins.servicer.servicer.img-map') }}" alt="">
                </div>
            @endif
            
        </ul>
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

                            @if($checkin && $checkout)
                                <th scope="col">Giá phòng/đêm</th>
                                
                                <th scope="col">Đặt phòng</th>
                            @else
                                <th scope="col"></th>
                            @endif

                        </tr>
                    </thead>
                    <tbody>
                        @foreach($room_types as $room)
                            <tr>
                                <td class="col-room-type">
                                    <div>
                                        <span class="room-type">{{$room->name}}</span>
                                        <ul class="clearfix photo-gallery">
                                            <li><img src="{{ get_object_image($room->image, 'featured') }}"/></li>
                                            <li class="d-none"><img src="{{ get_object_image($room->image, 'featured') }}"/></li>
                                        </ul>
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
                                @if($checkin && $checkout)
                                    <td class="col-gia-phong">
                                        <div class="tiet-kiem-ngay">
                                            <span>Tiết kiệm 10% ngay hôm nay!</span>
                                        </div>
                                        <div class="price-through">
                                            <span class="price">1,000,000 </span>
                                            <span class="currency">₫</span>
                                        </div>
                                        <div class="price-show">
                                            <span class="price">{{$room->price}} </span>
                                            <span class="currency">₫</span>
                                        </div>
                                        <div class="dang-nhap-giam">
                                            <p>Đăng nhập để giảm thêm <strong>200,000</strong> ₫</p>
                                        </div>
                                        <div class="con-trong">
                                            <span>Còn trống {{$room->number_of_servicer}} phòng</span>
                                        </div>
                                    </td>
                                    <td class="col-dat-phong">
                                        <form action="{{route('public.booking')}}" method="get">
                                            <input type="hidden" name="checkin" value="{{$checkin}}">
                                            <input type="hidden" name="checkout" value="{{$checkout}}">
                                            <input type="hidden" name="id" value="{{$room->id}}">
                                            <span>Phòng</span>
                                            <select class="form-control" name="number_of_servicer">
                                                @for($i = 1; $i <= $room->number_of_servicer; $i++)
                                                    <option value="{{$i}}">{{$i}}</option>
                                                @endfor
                                            </select>

                                            <span>Người lớn</span>
                                            <select class="form-control" name="adults">
                                                @for($i = 1; $i <= $room->adults; $i++)
                                                    <option value="{{$i}}">{{$i}}</option>
                                                @endfor
                                            </select>

                                            <span>Trẻ em</span>
                                            <select class="form-control" name="children">
                                                @for($i = 0; $i <= $room->children; $i++)
                                                    <option value="{{$i}}">{{$i}}</option>
                                                @endfor
                                            </select>
                                        
                                            <div class="gia-thap-nhat">
                                                <span class="">Giá thấp nhất</span>
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
        <div class="row">
            
        </div>
    </div>
</section>