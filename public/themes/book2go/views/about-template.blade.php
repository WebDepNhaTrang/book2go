@php 
if(!empty($page)) $post = $page; @endphp

<section id="about-us">
    <div class="container-fluid sub-banner" style="background-image: url({{ get_object_image($page->image, '') }});">
        <div class="sub-banner-header">
            <h3>{{ $page->name }}</h3>
        </div>
    </div>
    <!-- Nav Booking -->
    
    <!-- End / Nav Booking -->
    <div class="container breadcrumb-list mt-5">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $page->name }}</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row my-5">
            <div class="col-md-6 about-img">
                <picture>
                    <img class="img-fluid" src="{!! get_field($page->id, PAGE_MODULE_SCREEN_NAME, 'how_we_are_image_about_template') !!}" alt="{{ $page->name }}">
                </picture>
            </div>
            <div class="col-md-6 about-content">
                <div class="promo-caption">
                    <h1 class="caption-number">
                        <span>01</span>
                    </h1>
                    <h2 class="caption-title">
                        <span>{{ __('Chúng tôi là ai?') }}</span>
                    </h2>
                </div>
                <div>
                    {!! get_field($page->id, PAGE_MODULE_SCREEN_NAME, 'how_we_are_content_about_template') !!}
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row intro-description">
        {!! $page->content !!}
        </div>
    </div>

    <div class="container">
        <div class="promo-caption text-center my-5">
            <h1 class="caption-number text-center">
                <span>02</span>
            </h1>
            <h2 class="caption-title">
                <span>{{ __('Câu hỏi thường gặp') }}</span>
            </h2>
        </div>
        <div class="row">
            @foreach(get_posts_by_category(1,6,0) as $v)
            <div class="col-md-6">
                <h4>{{ $v->description }}</h4>
                {!! $v->content !!}
                <hr>
            </div>
            @endforeach
        </div>
    </div>
</section>