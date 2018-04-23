<!-- Section Banner -->
<section id="section-banner">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="promo-img">
                <img class="img-fluid" src="{{ __($config['banner_image']) }}" alt="book2go">
            </div>
            <marquee class="promo-caption" direction="up" scrolldelay="150" onmouseover="this.stop();" onmouseout="this.start();">
                @foreach(get_promotions_front() as $v)
                    <h1 class="caption-title"><i class="fab fa-hotjar"></i> {{ $v->name }}</h1>
                    <p class="caption-description">{{ $v->description }}</p>
                @endforeach
            </marquee>
        </div>
    </div>
</section>
<!-- End / Section Banner -->

{!! Theme::partial('search-bar') !!}