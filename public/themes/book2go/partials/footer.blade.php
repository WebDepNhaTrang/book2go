<!-- Section DoiTac -->
<section id="section-doitac">
    <section class="customer-logos slider container">
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand1.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand2.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand3.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand4.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand1.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand2.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand3.jpg') }}"></div>
        <div class="slide"><img class="img-fluid" src="{{ Theme::asset()->url('main-project/img/brand4.jpg') }}"></div>
    </section>
</section>
<!-- End / Section DoiTac -->

<!-- Section Footer -->
<footer class="page-footer font-small stylish-color-dark pt-4 mt-4">

    <!--Footer Links-->
    <div class="container text-center text-md-left">

        <!-- Footer links -->
        <div class="row text-center text-md-left mt-3 pb-3">

            <!--First column-->
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3 first-col">
                <h6 class="text-uppercase mb-4 font-weight-bold">Book2govn</h6>
                <p>Here you can use rows and columns here to organize your footer content. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                <img class="img-fluid" src="{{ theme_option('logo') }}" alt="{{ setting('site_title') }}">
            </div>
            <!--/.First column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Second column-->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3 second-col">
                <h6 class="text-uppercase mb-4 font-weight-bold">Sản Phẩm</h6>
                <p><a href="#!">MDBootstrap</a></p>
                <p><a href="#!">MDWordPress</a></p>
                <p><a href="#!">BrandFlow</a></p>
                <p><a href="#!">Bootstrap Angular</a></p>
            </div>
            <!--/.Second column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Third column-->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3 third-col">
                <h6 class="text-uppercase mb-4 font-weight-bold">Liên Kết</h6>
                <p><a href="#!">Your Account</a></p>
                <p><a href="#!">Become an Affiliate</a></p>
                <p><a href="#!">Shipping Rates</a></p>
                <p><a href="#!">Help</a></p>
            </div>
            <!--/.Third column-->

            <hr class="w-100 clearfix d-md-none">

            <!--Fourth column-->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3 fourth-col">
                <h6 class="text-uppercase mb-4 font-weight-bold">Liên Hệ</h6>
                <p><i class="fa fa-home mr-3"></i> {{ setting('contact_address') }}</p>
                <p><i class="fa fa-envelope mr-3"></i> {{ setting('email_support') }}</p>
                <p><i class="fa fa-phone mr-3"></i> {{ setting('contact_hotline') }}</p>
                <p><i class="fa fa-print mr-3"></i> {{ setting('contact_hotline') }}</p>
            </div>
            <!--/.Fourth column-->

        </div>
        <!-- Footer links -->
        <hr>
        <div class="row py-3 d-flex align-items-center">

            <!--Grid column-->
            <div class="col-md-8 col-lg-8">

                <!--Copyright-->
                <p class="text-center text-md-left grey-text">{!! __(theme_option('copyright')) !!}</p>
                <!--/.Copyright-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-4 col-lg-4 ml-lg-0">
                <!--Social buttons-->
                <div class="text-center text-md-right footer-social">
                    <ul class="list-unstyled list-inline">
                        <li class="list-inline-item"><a class="" href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="list-inline-item"><a class="" href="#"><i class="fab fa-twitter"></i></a></li>
                        <li class="list-inline-item"><a class="" href="#"><i class="fab fa-google-plus-g"></i></a></li>
                        <li class="list-inline-item"><a class="" href="#"><i class="fab fa-linkedin-in"></i></a></li>
                    </ul>
                </div>
                <!--/.Social buttons-->
            </div>
            <!--Grid column-->
        </div>
    </div>
</footer>
<!-- End / Section Footer -->

<!-- Return to Top -->
<a href="javascript:" id="return-to-top"><i class="fa fa fa-arrow-up"></i></a>
<!-- End / Return to Top -->

<!-- Poppup login -->
<div id="modal-login" class="popupContainer" style="display:none;">
    <header class="popupHeader">
        <span class="header_title">Đăng nhập</span>
        <span class="modal_close"><i class="fa fa-times"></i></span>
    </header>

    <section class="popupBody">
        <!-- Social Login -->
        <!-- <div class="social_login">
            <div class="">
                <a href="#" class="social_box fb">
                    <span class="icon"><i class="fab fa-facebook-f"></i></span>
                    <span class="icon_title">Đăng nhập bằng Facebook</span>

                </a>

                <a href="#" class="social_box google">
                    <span class="icon"><i class="fab fa-google-plus-g"></i></span>
                    <span class="icon_title">Đăng nhập bằng Google</span>
                </a>
            </div>

            <div class="centeredText">
                <span>Hoặc sử dụng email của bạn</span>
            </div>

            <div class="action_btns">
                <div class="one_half"><a href="#" id="login_form" class="btn">Đăng nhập</a></div>
                <div class="one_half last"><a href="#" id="register_form" class="btn">Tạo tài khoản</a></div>
            </div>
        </div> -->

        <!-- Username & Password Login form -->
        <div class="user_login">
            <form>
                <label>Địa chỉ Email</label>
                <input type="email" />
                <br />

                <label>Mật khẩu</label>
                <input type="password" />
                <br />

                <div class="checkbox">
                    <input id="remember" type="checkbox" />
                    <label for="remember">Lưu mật khẩu</label>
                </div>

                <div class="action_btns">
                    <!-- <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Trở lại</a></div> -->
                    <div class="one_half"><a href="#" class="btn btn_red">Đăng nhập</a></div>
                    <div class="one_half last"><a href="#" id="register_form" class="btn">Tạo tài khoản</a></div>
                    
                </div>
            </form>

            <a href="#" class="forgot_password">Quên mật khẩu?</a>
        </div>

        <!-- Register Form -->
        <div class="user_register">
            <form>
                <label>Họ và tên</label>
                <input type="text" />
                <br />

                <label>Địa chỉ Email</label>
                <input type="email" />
                <br />

                <label>Số điện thoại</label>
                <input type="text" />
                <br />

                <label>Địa chỉ</label>
                <input type="text" />
                <br />

                <label>Công ty</label>
                <input type="text" />
                <br />

                <label>Mật khẩu</label>
                <input type="password" />
                <br />

                <div class="action_btns">
                    <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Trở lại</a></div>
                    <div class="one_half last"><a href="#" class="btn btn_red">Tạo tài khoản</a></div>
                </div>
            </form>
        </div>
    </section>
</div>
<!-- End / Poppup login -->