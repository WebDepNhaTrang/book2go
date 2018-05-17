<section id="testimonials-page">
    <div class="container-fluid sub-banner" style="">
        <div class="sub-banner-header">
            <h3>Khách Hàng Nói Về Chúng Tôi</h3>
        </div>
    </div>
    <div class="container breadcrumb-list mt-5 mb-4">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ __('Khách Hàng Nói Về Chúng Tôi') }}</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row news-list">
            <div class="row testimonials-list">
                @foreach(get_posts_by_category(2,8,0) as $v)
                <div class="col-md-6 testimonials-item">
                    <div class="testimonials-info text-center">
                        <p>
                            {{ $v->description }}
                        </p>
                        <h5>{{ $v->name }}</h5>
                    </div>
                    <div class="testimonials-img text-center">
                        <picture>
                            <a href="{{ $v->other_content }}" target="_blank">
                                <img src="{{ get_object_image($v->image, '') }}" alt="{{ $v->name }}">
                            </a>
                        </picture>
                        
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    
</section>