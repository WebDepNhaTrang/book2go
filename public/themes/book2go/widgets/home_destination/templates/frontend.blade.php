<!-- Section Destinations -->
<section id="section-destinations">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="promo-img">
                <img class="img-fluid" src="{{ __($config['destination_image']) }}" alt="slide">
            </div>
            <div class="promo-caption">
                <h1 class="caption-number">
                    <span>{{ __($config['number']) }}</span>
                </h1>
                <h2 class="caption-title">
                    <span>{{ __($config['title']) }}</span>
                </h2>
                <p class="caption-description">
                    <span>{!! __($config['sub_title']) !!}</span>
                </p>
            </div>
            <div class="row destinations-list">
                <?php 
                    
                    // print_r(get_hotel_by_ids($config['hotels']));
                    // die();
                    $hotels = get_hotel_by_ids($config['hotels']);
                ?>
                @foreach($hotels as $hotel)
                        
                        <div class="col-sm-12 col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="pic-wrapper text-center">
                                        <a href="{{ route('public.single', $hotel->slug) }}">
                                            <img class="img-fluid" src="{{ get_object_image($hotel->image, 'medium') }}" alt="">
                                        </a>
                                        <div class="block-readmore"><a href="{{ route('public.single', $hotel->slug) }}"></a></div>
                                    </div>
                                    <div class="des-information">
                                        <div class="col-7 pr-0">
                                            <h2 class="des-title-header">
                                                <a href="{{ route('public.single', $hotel->slug) }}">{{ $hotel->name }}</a></h2>
                                                
                                                <p class="flag-icon flag-icon-fr">
                                                <span>
                                                    @if($hotel->star > 0)
                                                        @for($i=0; $i<5; $i++)
                                                        <img src="/themes/book2go/assets/main-project/img/star.png" border="0" alt="star">
                                                        @endfor
                                                    @endif
                                                </span>
                                                    
                                                </p>
                                                <p class="count-properties">{{ $hotel->address }}</p>
                                        </div>
                                        <div class="col-5 text-right">
                                            <p class="region-properties"><a href="{{ route('public.single', $hotel->slug) }}">Đặt ngay</a></p>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                @endforeach
                
                <!-- <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="./ks-detail.html">
                                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="./ks-detail.html"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5 text-right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="./ks-detail.html">
                                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="./ks-detail.html"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5" align="right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="#">
                                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="#"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5" align="right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="#">
                                    <img class="img-fluid" src=".{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="#"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5" align="right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="#">
                                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="#"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5" align="right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="#">
                                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                                </a>
                                <div class="block-readmore"><a href="#"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="#">Paris</a></h2>
                                        <p class="flag-icon flag-icon-fr">France</p>
                                </div>
                                <div class="col-5" align="right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="btn-block text-center">
                <a class="btn btn-default btn-outline" href="{{ url('/dia-diem.html') }}">Xem Tất Cả</a>
            </div>
        </div>
    </div>
</section>
<!-- End / Section Destinations -->