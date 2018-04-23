<section id="search-result">
    <div class="container-fluid sub-banner">
        <div class="sub-banner-header">
            <h3>Tìm Kiếm</h3>
        </div>
    </div>
    {!! Theme::partial('search-bar') !!}
    <div class="ks-info container">
        @if (isset($errors) && count($errors))
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <p>{{ $error }}</p>
                @endforeach
            </div>
        @endif
        @if($data)
            @foreach($data as $row)
                <div class="row mx-0 mb-4 item">
                    <div class="col-md-3 ks-info-1">
                        <img class="img-fluid" src="{{ get_object_image($row->image, 'featured') }}" alt="">
                    </div>
                    <div class="col-md-9 ks-info-2">
                        <div class="col-md-8 float-left">
                            <h2 class="ks-name my-0"><a href="{{route('public.single', ['slug' => $row->slug, 'checkin' => request()->get('checkin'), 'checkout' => request()->get('checkout') ])}}">{{$row->name}}</a>
                            </h2>

                            {!! render_number_star($row->star) !!}

                            <p class="address">{{$row->address}}</p>
                            <p class="tel">Tel: {{$row->phone}}</p>

                            {!! render_facebook_social(route('public.single', $row->slug)) !!}

                        </div>
                        <div class="col-md-4 float-right">
                            @php 
                                $promotion= get_promotion_by_id($row->id, $row->format_type?:request()->get('type'), request()->get('checkin'), request()->get('checkout'));
                            @endphp
                            @if($promotion)
                                <div class="tiet-kiem-ngay">
                                    <span>{{$promotion->promotion_name}}</span><br/>
                                    <label class="badge badge-info">Form {{date('d/m/Y', strtotime($promotion->start_date)) }} to {{date('d/m/Y', strtotime($promotion->end_date)) }}</label>
                                </div>
                            @endif
                            <div>
                                @if(!empty($promotion))
                                    <div class="price-through">
                                        {!! number_format_price($row->price) !!}
                                    </div>
                                    <div class="price-show">
                                        {!! number_format_price($row->price - ($row->price*$promotion->cost/100)) !!}
                                    </div>
                                @else
                                    <div class="price-show">
                                        {!! number_format_price($row->price) !!}
                                    </div>
                                @endif
                                
                            </div>
                        </div>
                        <div class="clear-fix"></div>
                    </div>
                </div>
            @endforeach

            {{$data->links()}}

        @endif
    </div>
    
</section>