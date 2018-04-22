<section id="ks-detail">
    <div class="ks-detail-banner">
        <ul class="sub-banner photo-gallery">
            @php
                $galleries = gallery_meta_data($post->id, APARTMENT_MODULE_SCREEN_NAME);
            @endphp
            @if($galleries)
                @foreach($galleries as $key => $gallery)
                    <li class="image-{{$key}} @if($key > 5) d-none @endif">
                        <img class="" src="{{ url($gallery['img']) }}" alt="">
                    </li>
                @endforeach
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
                    <p class="tel">{{__('Tel:')}} {{$post->phone}}</p>

                    {!! render_facebook_social(route('public.single', $post->slug)) !!}

                </div>
                @if($booking)
                    @if($promotion)                    
                        <div class="col-md-4">
                            <button type="button" class="btn btn-sm btn-danger" disabled>Giảm {{ number_format_promotion($promotion->cost)}}</button>
                        </div>
                    @endif
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
                @if($booking)
                    <form action="{{route('public.booking')}}" method="get">
                        <input type="hidden" name="checkin" value="{{$checkin?:null}}">
                        <input type="hidden" name="checkout" value="{{$checkout?:null}}">
                        <input type="hidden" name="id" value="{{$post->id}}">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <span>Phòng</span>
                                <select class="form-control" name="number_of_servicer">
                                    @for($i = 1; $i <= $post->number_of_servicer; $i++)
                                        <option value="{{$i}}">{{$i}}</option>
                                    @endfor
                                </select>
                            </div>
                            
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <button class="btn btn-primary" type="submit">Đặt ngay</button>
                            </div>
                        </div>
                        
                </form>
                @endif
            </div>
        </div>
    </div>

</section>