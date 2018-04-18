<!-- Section Banner -->
<section id="section-banner">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="promo-img">
                <img class="img-fluid" src="{{ __($config['banner_image']) }}" alt="book2go">
            </div>
            <marquee class="promo-caption" direction="up" scrolldelay="150" onmouseover="this.stop();" onmouseout="this.start();">
                <h1 class="caption-title"><i class="fab fa-hotjar"></i> Vinpearl Land Khuyến Mãi Hè</h1>
                <p class="caption-description">Từ 5/1 đặt phòng trực tuyến để được giảm giá 10% tại Vinpearl Land</p>
                <h1 class="caption-title"><i class="fab fa-hotjar"></i> Sunrise Giảm Giá</h1>
                <p class="caption-description">Giảm 10% khi đặt phòng trực tuyến tại Book2govn</p>
            </marquee>
        </div>
    </div>
</section>
<!-- End / Section Banner -->

{!! Theme::partial('search-bar') !!}