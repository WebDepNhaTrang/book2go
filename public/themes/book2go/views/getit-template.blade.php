@php 
if(!empty($page)) $post = $page; @endphp

<section id="get-it">
    <div class="container-fluid sub-banner">
        <div class="sub-banner-header">
            <h3>Khuyến Mãi</h3>
        </div>
    </div>
    <div class="container breadcrumb-list mt-5">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Khuyến mãi</li>
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
                <span>Chương trình khuyến mãi</span>
            </h2>
        </div>
    </div>
    @php
        $data = get_promotions_front();
    @endphp
    <div class="container">
        
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Khách sạn - Căn hộ</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Tour</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="row news-list">
                    @foreach($data as $v)
                    @php
                        //echo "<pre>";
                        //print_r($v->tours->toArray());
                        //echo "</pre>";
                        //die();
                    @endphp
                    @if($v->hotels->toArray())
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="block-article">
                                <div class="block-image">
                                    <img class="img-fluid" src="{{get_object_image($v->image, 'featured')}}" alt="Image">
                                    <div class="like">
                                        <div>- {{ $v->cost }}%</div>
                                    </div>
                                </div>
                                <h5 class="block-description">						
                                    <a class="mod-articles-category-title " href="{{route('public.single', $v->hotels[0]->slug)}}">
                                        {{ $v->name }}
                                    </a>
                                </h5>
                                <div class="date">Từ {{date('d/m/Y', strtotime($v->start_date)) }} đến {{date('d/m/Y', strtotime($v->end_date)) }}</div>
                            </div>
                        </div>
                    @elseif($v->apartments->toArray())
                        @php
                            $slug = get_slug_key_item('apartment', $v->apartments[0]->id);
                        @endphp
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="block-article">
                                <div class="block-image">
                                    <img class="img-fluid" src="{{get_object_image($v->image, 'featured')}}" alt="Image">
                                    <div class="like">
                                        <div>- {{ $v->cost }}%</div>
                                    </div>
                                </div>
                                <h5 class="block-description">						
                                    <a class="mod-articles-category-title " href="{{route('public.single', $slug)}}">
                                        {{ $v->name }}
                                    </a>
                                </h5>
                                <div class="date">Từ {{date('d/m/Y', strtotime($v->start_date)) }} đến {{date('d/m/Y', strtotime($v->end_date)) }}</div>
                            </div>
                        </div>
                    @endif
                    @endforeach
                </div>
                <div class="btn-block text-center">
                    <a class="btn btn-default btn-outline" href="">Xem thêm</a>
                </div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            <div class="row news-list">
                    @foreach($data as $v)
                    @php
                        //echo "<pre>";
                        //print_r($v->tours->toArray());
                        //echo "</pre>";
                        //die();
                    @endphp
                    @if($v->tours->toArray())
                        @php
                            $slug = get_slug_key_item('tour', $v->tours[0]->id);
                        @endphp
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="block-article">
                            <div class="block-image">
                                <img class="img-fluid" src="{{get_object_image($v->image, 'featured')}}" alt="Image">
                                <div class="like">
                                    <div>- {{ $v->cost }}%</div>
                                </div>
                            </div>
                            <h5 class="block-description">						
                                <a class="mod-articles-category-title " href="{{route('public.single', $slug)}}">
                                    {{ $v->name }}
                                </a>
                            </h5>
                            <div class="date">Từ {{date('d/m/Y', strtotime($v->start_date)) }} đến {{date('d/m/Y', strtotime($v->end_date)) }}</div>
                        </div>
                    </div>
                    @endif
                    @endforeach
                </div>
                <div class="btn-block text-center">
                    <a class="btn btn-default btn-outline" href="">Xem thêm</a>
                </div>
            </div>
        </div>
    </div>
</section>