@php 
if(!empty($page)) $post = $page; @endphp

<section id="tour-list">
    <div class="container-fluid sub-banner">
        <div class="sub-banner-header">
            <h3>Tour</h3>
        </div>
    </div>
    {!! Theme::partial('search-bar') !!}
    <div class="container breadcrumb-list mt-5">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tour</li>
                </ol>
            </nav>
        </div>
    </div>
    @php
        $data = get_tours_front();
    @endphp
    <div class="container">
        <div class="row destinations-list">
            @foreach ($data as $key => $value)
                <div class="col-sm-12 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="pic-wrapper text-center">
                                <a href="{{route('public.single', $value->slug)}}">
                                    <img class="img-fluid" src="{{get_object_image($value->image, 'featured')}}" alt="">
                                </a>
                                <div class="block-readmore"><a href="{{route('public.single', $value->slug)}}"></a></div>
                            </div>
                            <div class="des-information">
                                <div class="col-7">
                                    <h2 class="des-title-header">
                                        <a href="{{route('public.single', $value->slug)}}">{{$value->name}}</a></h2>
                                        <p class="flag-icon flag-icon-fr">{{$value->address}}</p>
                                </div>
                                <div class="col-5 text-right">
                                    <p class="region-properties"><a href="#">Alsace</a></p>
                                    <p class="count-properties">1 properties</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            
        </div>
        <div class="btn-block text-center">
            {!! $data->setPath(route('public.single', $post->slug))->links() !!}            
        </div>
    </div>
        
</section>