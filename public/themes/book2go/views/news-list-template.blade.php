<section id="news-list-page">
    <div class="container-fluid sub-banner" style="background-image: url({{ get_object_image($category->image, '') }});">
        <div class="sub-banner-header">
            <h3>Tin Tức Du Lịch</h3>
        </div>
    </div>
    <div class="container breadcrumb-list mt-5 mb-4">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{ url('/') }}">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">{{ $category->name }}</li>
                </ol>
            </nav>
        </div>
    </div>
    <div class="container">
        <div class="row news-list">
        @if ($posts->count() > 0)
        @foreach ($posts as $v)
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="block-article">
                    <div class="block-image">
                        <img class="img-fluid" src="{{ get_object_image($v->image, '') }}" alt="{{ $v->name }}">
                        <div class="like"><i class="fa fa-thumbs-up">&nbsp;</i>
                            <div>{{ rand(50,200) }}</div>
                        </div>
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
            @endif
        </div>
    </div>
    
</section>