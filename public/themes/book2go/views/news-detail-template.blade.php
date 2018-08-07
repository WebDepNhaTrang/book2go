<section id="news-detail">
    <div class="container-fluid sub-banner" style="background-image: url({{ get_object_image($post->other_image, '') }});">
        <div class="sub-banner-header">
            <h3>Tin Tức Du Lịch</h3>
        </div>
    </div>
    <div class="container breadcrumb-list mt-5">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item"><a href="{{ route('public.single', $post->categories->first()->slug) }}">{{ $post->categories->first()->name }}</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $post->name }}</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row my-5">
            
            <div class="col-md-12 about-content">
                <div class="promo-caption text-center">
                    <h1 class="caption-number">
                        <span>01</span>
                    </h1>
                    <h2 class="caption-title">
                        <span>{{ $post->name }}</span>
                    </h2>
                </div>
                <div class="fb-social" style="text-align: right;">
                    {!! render_facebook_social(route('public.single', $post->slug)) !!}
                </div>
                <div>
                    {!! $post->content !!}
                </div>
            </div>
        </div>
    </div>
</section>