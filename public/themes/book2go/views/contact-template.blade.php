@php 
if(!empty($page)) $post = $page; @endphp

<section id="contact">
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
                    <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $page->name }}</li>
                </ol>
            </nav>
        </div>
    </div>
    
    <div class="container">
        <div class="promo-caption text-center my-4">
            <h1 class="caption-number">
                <span>01</span>
            </h1>
            <h2 class="caption-title">
                <span>Liên hệ với chúng tôi</span>
            </h2>
        </div>
        <div class="row col-md-12">
            {!! $page->content !!}
        </div>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-5">
                <picture>
                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/banner-page-contact.jpg') }}" alt="">
                </picture>
            </div>
            <div class="col-md-7">
                @php
                    echo do_shortcode('[contact-form][/contact-form]');
                @endphp
            </div>
        </div>
    </div>
</section>