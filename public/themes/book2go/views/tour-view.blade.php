<section id="tour-detail">
    <div class="ks-detail-banner">
        <ul class="sub-banner photo-gallery">
            @php
                $galleries = gallery_meta_data($post->id, TOUR_MODULE_SCREEN_NAME);
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
                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/ks-info.jpg') }}" alt="">
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
                        <label class="badge badge-info">Form {{date('d/m/Y', strtotime($promotion->start_date)) }} to {{date('d/m/Y', strtotime($promotion->end_date)) }}</label>
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
    <div class="tour-dattour container">
        <div class="row">
            <div class="col-md-12 px-3 py-3 tour-dattour-title">
                <h5 class="mb-0">Chọn Số Lượng & Đặt Tour</h5>
            </div>
            <div class="col-md-12 px-3 py-3 tour-dattour-content">
                <p>
                    <span>Giá Tour:</span>
                    @if($promotion)
                        <div class="tiet-kiem-ngay">
                            <span>{{$promotion->promotion_name}}</span>
                        </div>
                        <div class="price-through">
                            {!! number_format_price($post->price) !!}
                            
                        </div>
                        <div class="price-show">
                            {!! number_format_price($post->price - ($post->price * $promotion->cost / 100)) !!}
                            <span>/khách</span>
                        </div>
                    @else
                        <div class="price-show">
                            {!! number_format_price($post->price) !!}
                            <span>/khách</span>
                        </div>
                    @endif
                </p>
                <form id="search-hotel" action="{{route('public.booking')}}" class="row" method="GET">
                    <div class="col-xs-12 col-sm-12 col-md-6 arrival-date">
                        <div class="form-group mb-0">
                            <label for="arrivalDate" class="control-label">Ngày đi</label>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" id="daterange-hotel" style="text-align: center;cursor:pointer;" class="input-small form-control" @if($checkin && $checkout) data-start-date="{{date('d/m/Y', strtotime($checkin))}}" data-end-date="{{date('d/m/Y', strtotime($checkout))}}" @endif/>
                                    <div class="input-group-append">
                                        <span class="input-group-text bg-white"><i class="fa fa-calendar-alt"></i></span>
                                    </div>
                                    <input type="hidden" name="checkin" value="{{$checkin}}">
                                    <input type="hidden" name="checkout" value="{{$checkout}}">
                                    <input type="hidden" name="id" value="{{$post->id}}">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xs-12 col-sm-4 col-md-2 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Người lớn</label>
                            <div class="input-group">
                                <select class="form-control" name="adults" id="adults" >
                                    @for($i = 1; $i <= 10; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-2 departure-date">
                        <div class="form-group mb-0">
                            <label for="departureDate" class="control-label">Trẻ em</label>
                            <div class="input-group">
                                <select class="form-control" name="children" id="children" >
                                    @for($i = 0; $i <= 10; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-2 search-block">
                        <button class="btn btn-primary" type="submit">Đặt tour</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
    //popup google map
    //59.76522, 18.35002
    var center = new google.maps.LatLng({{ $post->lat_long }});

    function initialize() {

        var mapOptions = {
            zoom: 10,
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