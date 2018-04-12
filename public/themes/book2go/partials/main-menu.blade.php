<!-- <ul class="navbar-nav ml-auto">
    <li class="nav-item active">
    <a class="nav-link" href="#">Trang Chủ <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="./about.html">Giới Thiệu</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="./ks-ch-list.html">Địa Điểm</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="./tour-list.html">Tour</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="./faq.html">FAQs</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="./contact.html">Liên Hệ</a>
    </li>
    <li class="nav-item khuyen-mai">
        <a class="nav-link" href="./get-it.html"><i class="fab fa-hotjar"></i> Khuyến Mãi</a>
    </li>
</ul> -->

<ul {!! $options !!}>
	@foreach ($menu_nodes as $key => $row)
		<li class="nav-item {{ $row->css_class }} @if ($row->getRelated()->url == Request::url()) current-menu-item @endif" >
		    <a class="nav-link" href="{{ $row->getRelated()->url }}" target="{{ $row->target }}">{{ $row->getRelated()->name }}  @if ($row->hasChild()) <span class="fa fa-caret-down"></span> @endif </a>
		    @if ($row->hasChild())
		        {!!
		            Menu::generateMenu([
		                'slug' => $menu->slug,
		                'view' => 'main-menu',
		                'options' => ['class' => 'sub-menu'],
		                'parent_id' => $row->id
		            ])
		        !!}
		    @endif
		</li>
	@endforeach
</ul>