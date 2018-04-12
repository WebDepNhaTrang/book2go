@php 
if(!empty($page)) $post = $page; @endphp

<section id="contact">
    <div class="container-fluid sub-banner">
        <div class="sub-banner-header">
            <h3>Liên hệ</h3>
        </div>
    </div>
    <!-- Nav Booking -->

    
    <!-- End / Nav Booking -->
    <div class="container breadcrumb-list mt-5">
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Liên hệ</li>
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
                <span>Liên hệ với chúng tôi</span>
            </h2>
        </div>
        <div class="row col-md-12">
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate odit minima aut, tempore id laudantium consectetur delectus aspernatur quas obcaecati harum aliquam voluptatem, labore molestiae asperiores, non explicabo quia sunt!
            </p>
        </div>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-md-5">
                <picture>
                    <img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/banner-page-contact.jpg') }}" alt="">
                </picture>
            </div>
            <div class="col-md-7">
                <div class="form-contact">
                    <h4>Gửi tin nhắn cho chúng tôi</h4>
                    <form>
                        <div class="form-group">
                            <label for="txtname">Họ và tên</label>
                            <input type="text" class="form-control" id="txtname" placeholder="Nhập họ và tên">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Nhập email của bạn">
                        </div>
                                
                        <div class="form-group">
                            <label for="txtphone">Số điện thoại</label>
                            <input type="text" class="form-control" id="txtphone" placeholder="Nhập số điện thoại">
                        </div>

                        <div class="form-group">
                            <label for="txtnoidung">Nội dung</label>
                            <textarea class="form-control" id="txtnoidung" rows="5">Nhập nội dung</textarea>
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Gửi</button>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
</section>