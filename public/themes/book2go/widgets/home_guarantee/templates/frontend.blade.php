<!-- Section Guarantee -->
<section id="section-guarantee">
    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <div class="promo-caption">
                <h1 class="caption-number">
                    <span>{{ __($config['number']) }}</span>
                </h1>
                <h2 class="caption-title">
                    <span>{{ __($config['title']) }}</span>
                </h2>
                <p class="caption-description">
                    <span>{!! __($config['sub_title']) !!}</span>
                </p>
            </div>
            <div class="row guarantee-list">
                <div class="col-md-4 guarantee-item">
                    <div class="guarantee-info text-center">
                        <img src="{{ Theme::asset()->url('main-project/img/icon1.png') }}" alt="">
                        <div class="guarantee-title">
                            <?php 
                                // print_r(get_block_by_id(1));
                            ?>
                            <h2>{{ get_block_by_id(1)->description }}</h2>
                        </div>
                        <div class="guarantee-des">
                                {!! get_block_by_id(1)->content !!}
                        </div>
                    </div>
                </div>
                <div class="col-md-4 guarantee-item">
                    <div class="guarantee-info text-center">
                        <img src="{{ Theme::asset()->url('main-project/img/icon2.png') }}" alt="">
                        <div class="guarantee-title">
                            <h2>{{ get_block_by_id(2)->description }}</h2>
                        </div>
                        <div class="guarantee-des">
                            {!! get_block_by_id(2)->content !!}
                        </div>
                    </div>
                </div>
                <div class="col-md-4 guarantee-item">
                    <div class="guarantee-info text-center">
                        <img src="{{ Theme::asset()->url('main-project/img/icon3.png') }}" alt="">
                        <div class="guarantee-title">
                            <h2>{{ get_block_by_id(3)->description }}</h2>
                        </div>
                        <div class="guarantee-des">
                            {!! get_block_by_id(3)->content !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End / Section Guarantee -->