<!-- Section News -->
<section id="section-news">
    <div class="jumbotron jumbotron-fluid">
        <div class="container" style="padding-bottom: 40px;">
            <div class="promo-caption">
                <h1 class="caption-number">
                    <span>{{ __($config['number']) }}</span>
                </h1>
                <h2 class="caption-title">
                    <span>{{ get_category_by_id(3)->name }}</span>
                </h2>
                <p class="caption-description">
                    <span>{!! get_category_by_id(3)->description !!}</span>
                </p>
            </div>
            <div class="row news-list">
                @foreach(get_posts_by_category(3,3,0) as $v)
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">  
                    <div class="block-article">
                        <div class="block-image">
                            <img class="img-fluid" src="{{ get_object_image($v->image, '') }}" alt="{{ $v->name }}">
                            <!-- <div class="like"><i class="fa fa-thumbs-up">&nbsp;</i>
                                <div>{{ rand(50,200) }}</div>
                            </div> -->
                        </div>
                        <h5 class="block-description">						
                            <a class="mod-articles-category-title " href="{{ route('public.single', $v->slug) }}">
                                {{ $v->name }}
                            </a>
                        </h5>
                        <div class="date">{{ date_from_database($v->created_at, 'd - m - Y') }}</div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="btn-block text-center">
                <a class="btn btn-default btn-outline" href="{{ url('/tin-tuc-du-lich.html') }}">Xem Tất Cả</a>
            </div>
        </div>
    </div>
</section>
<!-- End / Section News -->