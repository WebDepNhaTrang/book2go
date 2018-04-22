<section id="ks-booking">
                
    <div class="container">
    	@if(!Auth::guard('member')->check())
            <div class="login-tip">
                <div class="row">
                    <div class="col-9">
                        <i class="insider-banner-tag"></i>
                        <strong>Giảm đến 30% với Ưu đãi nội bộ Book2govn!</strong>
                        <p>Giá sẽ giảm ngay khi đăng nhập!</p>
                    </div>
                    <div class="col-3">
                        Đăng nhập
                        <i class="fas fa-chevron-circle-right"></i>
                    </div>
                </div>
            </div>
            @php 
        	$member = null; @endphp
        @else
        	@php 
        	$member = Auth::guard('member')->user(); @endphp
        @endif
        @if (isset($errors) && count($errors))
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    <p>{{ $error }}</p>
                @endforeach
            </div>
        @endif
        <div class="row pageBooking">
            <div class="col-md-7">
                <div class="ks-booking-form">
                    <h5>Vui lòng điền thông tin của bạn</h5>
                    {!! Form::open(['route' => 'public.booking.post', 'id' => 'booking-available']) !!}
                        <div class="form-group">
                            <label for="txtname">Họ và tên</label>
                            <input type="text" class="form-control" id="txtname" name="fullname" value="{{old('fullname', $member?$member->name:null)}}" placeholder="Nhập họ và tên">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" value="{{old('email', $member?$member->email:null)}}" placeholder="Nhập email của bạn">
                        </div>
                                
                        <div class="form-group">
                            <label for="txtphone">Số điện thoại</label>
                            <input type="text" class="form-control" id="txtphone" name="phone" value="{{old('phone', $member?$member->phone:null)}}" placeholder="Nhập số điện thoại">
                        </div>
                        <div class="form-group">
                            <label for="txtaddress">Địa chỉ</label>
                            <input type="text" class="form-control" id="txtaddress" name="address" value="{{old('address', $member?$member->address:null)}}" placeholder="Nhập địa chỉ">
                        </div>

                        <button type="submit" class="btn btn-primary">Xác nhận đặt phòng</button>
                    {!! Form::close() !!}
                </div>
                
            </div>
            <div class="col-md-5">
                <div class="ks-booking-info">
                    <h5>Thông tin về tour đã chọn</h5>
                    <div class="row date-time">
                        <div class="col-5">
                            <span>Ngày đi</span><br>
                            <span class="dd">{{date('d', strtotime($requests['checkin']))}}</span>
                            <span>{{date('m Y', strtotime($requests['checkin']))}}</span>
                        </div>
                        <div class="col-2">
                            <i class="icon-arrow fas fa-angle-right"></i>
                        </div>
                        <div class="col-5">
                            <span>Ngày về</span><br>
                            <span class="dd">{{date('d', strtotime($requests['checkout']))}}</span>
                            <span>{{date('m Y', strtotime($requests['checkout']))}}</span>
                        </div>
                    </div>
                    <div class="row price-detail">
                        <div class="col-7">
                            <span>Tên Tour:</span><br>
                            <span>Người lớn ({{$requests['adults']}} khách):</span><br>
                            <span>Trẻ em ({{$requests['children']}} khách):</span>
                        </div>
                        <div class="col-5">
                            <span><a target="_blank" href="{{route('public.single',  $servicer->slug)}}">{{$servicer->name}}</a></span><br>
                            <div class="price-show">
                                <span class="price">{{$total_price}}</span>
                                <span class="currency">₫</span>
                            </div>
                            <div class="price-show">
                                <span class="price">0 </span>
                                <span class="currency">₫</span>
                            </div>
                        </div>
                    </div>
                    <div class="row price-final">
                        <div class="col-7">
                            <span class="giatien">Giá tiền: <i class="fas fa-info-circle" data-toggle="tooltip" data-placement="bottom" title="Tooltip on top"></i></span><br>
                            <span class="baogom">Giá đã bao gồm: Phí dịch vụ 5%, Thuế 10%</span>
                        </div>
                        <div class="col-5">
                            <div class="price-total">
                                <span class="price">{{$total_price}} </span>
                                <span class="currency">₫</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>