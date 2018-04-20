<section id="search-result">
    <div class="container-fluid sub-banner">
        <div class="sub-banner-header">
            <h3>Tìm Kiếm</h3>
        </div>
    </div>
    {!! Theme::partial('search-bar') !!}
    <div class="ks-info container">
        @if (isset($errors) && count($errors))
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <p>{{ $error }}</p>
                @endforeach
            </div>
        @endif
        @if($data)
            @foreach($data as $row)
                <div class="row mx-0 mb-4 item">
                    <div class="col-md-3 ks-info-1">
                        <img class="img-fluid" src="{{ get_object_image($row->image, 'featured') }}" alt="">
                    </div>
                    <div class="col-md-9 ks-info-2">
                        <div class="col-md-8 float-left">
                            <h2 class="ks-name my-0"><a href="{{route('public.single', ['slug' => $row->slug, 'checkin' => request()->get('checkin'), 'checkout' => request()->get('checkout') ])}}">{{$row->name}}</a>
                            </h2>

                            {!! render_number_star($row->star) !!}

                            <p class="address">{{$row->address}}</p>
                            <p class="tel">Tel: {{$row->phone}}</p>

                            {!! render_facebook_social(route('public.single', $row->slug)) !!}

                        </div>
                        <div class="col-md-4 float-right">
                            <div class="tiet-kiem-ngay">
                                <span>Tiết kiệm 10% ngay hôm nay!</span>
                            </div>
                            <div>
                                <div class="price-through">
                                    <span class="price">1,000,000 </span>
                                    <span class="currency">₫</span>
                                </div>
                                <div class="price-show">
                                    <span class="price">{{$row->price}}</span>
                                    <span class="currency">₫</span>
                                </div>
                            </div>
                        </div>
                        <div class="clear-fix"></div>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
    
</section>