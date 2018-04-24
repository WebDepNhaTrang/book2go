@php 
if(!empty($page)) $post = $page; @endphp

<section id="faq">
<div class="container-fluid sub-banner" style="background-image: url({{ get_object_image($page->image, '') }});">
    <div class="sub-banner-header">
        <h3>{{ $page->name }}</h3>
    </div>
</div>
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
    <div class="promo-caption text-center my-5">
        <h1 class="caption-number text-center">
            <span>01</span>
        </h1>
        <h2 class="caption-title">
            <span>{{ __('Câu hỏi thường gặp') }}</span>
        </h2>
    </div>
    <div class="row">
        @foreach(get_posts_by_category(5,6,0) as $v)
        <div class="col-md-6">
            <h4>{{ $v->description }}</h4>
            {!! $v->content !!}
            <hr>
        </div>
        @endforeach
    </div>
</div>

</section>