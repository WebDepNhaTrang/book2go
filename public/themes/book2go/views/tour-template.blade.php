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
    <div class="container">
        <div class="row destinations-list">
            <div class="col-sm-12 col-md-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="pic-wrapper text-center">
                            <a href="./tour-detail.html">
                                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                            </a>
                            <div class="block-readmore"><a href="./tour-detail.html"></a></div>
                        </div>
                        <div class="des-information">
                            <div class="col-7">
                                <h2 class="des-title-header">
                                    <a href="#">Tour Bình Ba</a></h2>
                                    <p class="flag-icon flag-icon-fr">Cam Ranh, Khánh Hòa</p>
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
                            <a href="./tour-detail.html">
                                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                            </a>
                            <div class="block-readmore"><a href="./tour-detail.html"></a></div>
                        </div>
                        <div class="des-information">
                            <div class="col-7">
                                <h2 class="des-title-header">
                                    <a href="#">Tour Điệp Sơn</a></h2>
                                    <p class="flag-icon flag-icon-fr">Ninh Hòa, Khánh Hòa</p>
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
                            <a href="./ks-detail.html">
                                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                            </a>
                            <div class="block-readmore"><a href="./ks-detail.html"></a></div>
                        </div>
                        <div class="des-information">
                            <div class="col-7">
                                <h2 class="des-title-header">
                                    <a href="./ks-detail.html">Paris</a></h2>
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
                            <a href="./ks-detail.html">
                                <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/3.jpg') }}" alt="">
                            </a>
                            <div class="block-readmore"><a href="./ks-detail.html"></a></div>
                        </div>
                        <div class="des-information">
                            <div class="col-7">
                                <h2 class="des-title-header">
                                    <a href="./ks-detail.html">Paris</a></h2>
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
        </div>
        <div class="btn-block text-center">
            <a class="btn btn-default btn-outline" href="">Xem Thêm</a>
        </div>
    </div>
        
</section>