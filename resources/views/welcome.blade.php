@extends('layout.home-page')
@section('content')
    @include('layout.component.slider')

    <title>{{ $title_page ?? $title_page}}</title>
    <br>

    <div class="product knowdge">
        <div class="wrp">
            <a href="javascript://" title="" class="titleHead">Sản phẩm bán chạy nhất</a>
            <div class="tabs">
                <ul class="tab-links">
                    <li class="active"><a href="#tab1" title="">ĐỒNG HỒ CHÍNH HÃNG</a></li>
                    <li><a href="#tab2" title="">KÍNH MẮT THỜI TRANG</a></li>
                    <li><a href="#tab3" title="">DÂY ĐỒNG HỒ</a></li>
                </ul>
                <div class="tabContent">
                    <div id="tab1" class="tab active">
                        <div class="group slide">
                            @if (isset($productsWatch))
                                @foreach($productsWatch as $product)
                                    @include('layout.component.product_item',['product'=>$product])
                                @endforeach
                            @endif
                        </div>
                    </div>
                    <div id="tab2" class="tab">
                        <div class="group slide">
                            @if (isset($productsGlass))
                                @foreach($productsGlass as $product)
                                    @include('layout.component.product_item',['product'=>$product])
                                @endforeach
                            @endif
                        </div>
                    </div>
                    <div id="tab3" class="tab">
                        <div class="group slide">
                            @if (isset($productsAccessoriess))
                                @foreach($productsAccessoriess as $product)
                                    @include('layout.component.product_item',['product'=>$product])
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="countCate" class="dn dbmobile-l">
        <div class="wrp">
            <div class="group">
                <a href="/phu-kien-dong-ho.html" title="Phu kien" class="item">
                    <span class="ttu"><b>DÂY ĐỒNG HỒ</b></span>
                    <span><b>178</b></span>
                </a>
                <a href="/kinh-mat-thoi-trang.html" title="Kinh mat thoi trang" class="item">
                    <span class="ttu "><b>KÍNH MẮT</b></span>
                    <span><b>2.020</b></span>
                </a>
                <a href="/sp/but-ky-cao-cap.html" title="Bút ký" class="item">
                    <span class="ttu">BÚT KÝ CAO CẤP</span>
                    <span><b>11</b></span>
                </a>
                <a href="/sp/hop-dung-dong-ho.html" title="Hộp đồng hô" class="item">
                    <span class="ttu"><b>HỘP ĐỒNG HỒ</b></span>
                    <span><b>34</b></span>
                </a>
            </div>
        </div>
    </div>

    <div id="logoPartner">
        <div class="wrp">
            <div class="wImage">
                <a href="/sp/dong-ho-philippe-auguste.html" title="Philippe Auguste" class="image lazy">
                    <img data-src="/view/img/PA.jpg" alt="Philippe Auguste" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
            <div class="wImage">
                <a href="/sp/dong-ho-atlantic-swiss.html" title="Atlantic Swiss" class="image">
                    <img data-src="/view/img/Atlatic.jpg" alt="Atlantic Swiss" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
            <div class="wImage">
                <a href="/sp/dong-ho-diamond-d.html" title="Diamond D" class="image">
                    <img data-src="/view/img/DiamondD.jpg" alt="Diamond D" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
            <div class="wImage">
                <a href="/sp/dong-ho-jacques-lemans.html" title="Jacques Lemans" class="image">
                    <img data-src="/view/img/Jacques.jpg" alt="Jacques Lemans" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
            <div class="wImage">
                <a href="/sp/dong-ho-aries-gold.html" title="Aries Gold" class="image">
                    <img data-src="/view/img/AriesGold.jpg" alt="Aries Gold" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
            <div class="wImage">
                <a href="/sp/dong-ho-epos-swiss.html" title="Epos Swiss" class="image">
                    <img data-src="/view/img/Epos.jpg" alt="Epos Swiss" class="lazy" src="/view/lazy.jpg">
                </a>
            </div>
        </div>
    </div>
    <div class="product">
        <div class="wrp">
            <h2 class="titleCate">
                <a href="/sp/dong-ho-philippe-auguste.html" title="Philippe August">
                    <span class="icon"><img data-src="/view/img/icon1.png" alt="Philippe August" class="lazy"
                                            src="/view/lazy.jpg"/></span>
                    PHILIPPE AUGUSTE
                </a>
            </h2>
            <div class="group slide">
                @foreach($listProduct1 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach
            </div>

        </div>
    </div>
    <div class="product pb20">
        <div class="wrp">
            <h2 class="titleCate">
                <a href="/sp/dong-ho-diamond-d.html" title="Diamond D">
                    <span class="icon"><img data-src="/view/img/icon1.png" alt="Diamond D" class="lazy"
                                            src="/view/lazy.jpg"/></span>Đồng hồ Diamond D
                </a>
            </h2>
            <div class="group slide">
                @foreach($listProduct2 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach
            </div>

        </div>
    </div>

    <div class="product product3">
        <div class="wrp">
            <div class="bannerMain">
                <div class="wImage dnTablet-l">
                    <a href="/sp/dong-ho-epos-swiss.html" title="EPos Swiss" class="image cover">
                        <img data-src="/view/img/EP246.jpg" class="lazy" src="/view/lazy.jpg"/>
                    </a>
                </div>
                <div class="wImage dn dbtablet-l">
                    <a href="/sp/dong-ho-epos-swiss.html" title="Epos" class="image cover">
                        <img data-src="/view/img/EP246M.jpg" class="lazy" src="/view/lazy.jpg"/>
                    </a>
                </div>
                <h2 class="info">
                    <a href="/sp/dong-ho-epos-swiss.html" title="Epos Swiss" class="name">
                        <span>Đồng hồ Thụy Sỹ</span> <span class="dn dbtablet-l"> </span>
                        <span>Epos Swiss</span>
                    </a>
                    <a href="/sp/dong-ho-epos-swiss.html" title="Epos Swiss" class="viewAll">Xem tất cả <i
                                class="fa fa-chevron-right"></i></a>
                </h2>
            </div>
            <div class="group slide3">
                @foreach($listProduct3 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach

            </div>
        </div>
    </div>
    <div class="product pt10">
        <div class="wrp">
            <h2 class="titleCate">
                <a href="/sp/dong-ho-jacques-lemans.html" title="jacques lemans">
                    <span class="icon"><img data-src="/view/img/icon1.png" class="lazy" src="/view/lazy.jpg"/></span>
                    JACQUES LEMANS
                </a>
            </h2>
            <div class="group slide">
                @foreach($listProduct4 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach

            </div>

        </div>
    </div>
    <div class="product pb20">
        <div class="wrp">
            <h2 class="titleCate">
                <a href="/sp/dong-ho-aries-gold.html" title="Aries Gold" class="">
                    <span class="icon"><img data-src="/view/img/icon1.png" alt="AG" class="lazy" src="/view/lazy.jpg"/></span>
                    ĐỒNG HỒ ARIES GOLD
                </a>
            </h2>
            <div class="group slide">
                @foreach($listProduct5 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach

            </div>

        </div>
    </div>
    <div class="product product3">
        <div class="wrp">
            <div class="bannerMain">
                <div class="wImage dnTablet-l">
                    <a href="/sp/dong-ho-atlantic-swiss.html" title="Atlantic Swiss" class="image cover">
                        <img data-src="/view/img/AT1.jpg" alt="Atlantic" class="lazy" src="/view/lazy.jpg"/>
                    </a>
                </div>
                <div class="wImage dn dbtablet-l">
                    <a href="/sp/dong-ho-atlantic-swiss.html" title="Epos" class="image cover">
                        <img data-src="/view/img/AT2.jpg" alt="Atlantic" class="lazy" src="/view/lazy.jpg"/>
                    </a>
                </div>
                <h3 class="info">
                    <a href="/sp/dong-ho-atlantic-swiss.html" title="Atlantic Swiss" class="name">
                        <span>Đồng hồ Thụy Sỹ</span> <span class="dn dbtablet-l"> </span>
                        <span>Atlantic Swiss</span>
                    </a>
                    <a href="/sp/dong-ho-atlantic-swiss.html" title="Atlantic Swiss" class="viewAll">Xem tất cả <i
                                class="fa fa-chevron-right"></i></a>
                </h3>
            </div>
            <div class="group slide3">
                <div class="item">
                    <div class="wImage">
                        <a href="/sp/10200/dong-ho-atlantic-swiss-at-603424561.html" title="" class="image">
                            <img data-src="https://www.dangquangwatch.vn//upload/product_small/1117745815_dong-ho-chinh-hang-1.jpg"
                                 alt="Dong ho Atlantic" class="lazy" src="/view/lazy.jpg"/>
                        </a>
                    </div>
                    <div class="info">
                        <p>40mm | 5ATM | Sapphire</p>
                        <a href="/sp/10200/dong-ho-atlantic-swiss-at-603424561.html"
                           title="Đồng hồ Atlantic Swiss AT-60342.45.61" class="name">
                            Đồng hồ Atlantic Swiss AT-60342.45.61 - Nam </a>
                        <div class="price">
                            <p class="new">8.390.000đ</p>
                        </div>
                        <div class="count">
                            <div class="bg" style="width: 18%"></div>
                            <span class="text">Còn lại 72</span>
                        </div>
                    </div>
                </div>
                @foreach($listProduct6 as $list)
                    @include('layout.component.list_product',['list'=>$list])
                @endforeach
            </div>

        </div>
    </div>
    <div id="serviceSup">
        <div class="wrp">
            <div class="group">
                <div class="item">
                    <div class="flex">
                        <div class="img">
                            <img data-src="/view/img/sup1.png" alt="Ship" class="lazy" src="/view/lazy.jpg"/>
                        </div>
                        <div class="text">
                            <p class="ttu fRobotoB">GIAO HÀNG MIỄN PHÍ</p>
                            <p>Thanh toán (COD) tại nhà</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="flex">
                        <div class="img">
                            <img data-src="/view/img/sup2.png" alt="Doi san pham" class="lazy" src="/view/lazy.jpg"/>
                        </div>
                        <div class="text">
                            <p class="ttu fRobotoB">30 NGÀY ĐỔI SẢN PHẨM</p>
                            <p>Miễn phí</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="flex">
                        <div class="img">
                            <img data-src="/view/img/sup3.png" alt="Bao hanh" class="lazy" src="/view/lazy.jpg"/>
                        </div>
                        <div class="text">
                            <p class="ttu fRobotoB">BẢO HÀNH QUỐC TẾ</p>
                            <p>Thay pin miễn phí</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="flex">
                        <div class="img">
                            <img data-src="/view/img/sup4.png" alt="Hoa don do" class="lazy" src="/view/lazy.jpg"/>
                        </div>
                        <div class="text">
                            <p class="ttu fRobotoB">CHÍNH HÃNG 100%</p>
                            <p>Xuất hóa đơn đỏ</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="SupInfo">
        <div class="wrp">
            <div class="left">
                <div class="item">
                    <p class="head">Hotline</p>
                    <a href="tel:18006005" title="Hotline" class="tel">
                        <span class="icon"><i class="fa fa-phone"></i></span>
                        <span class="text">1800.6005</span>
                    </a>
                </div>
                <div class="item">
                    <p class="head">Gọi đặt hàng</p>
                    <a href="tel:0985681189" title="Hotline" class="tel">
                        <span class="icon"><i class="fa fa-phone"></i></span>
                        <span class="text">098.568.1189</span>
                    </a>
                </div>
            </div>
            <div class="right">
                <div class="mail">
                    <p class="fs17 ttu mb10">Đăng ký nhận thông tin mới</p>
                    <div id="frmMail">
                        <input type="text" value="" placeholder="Nhập email của bạn tại đây"/>
                        <a href="javascript://" title="" class="btnRegis">Đăng ký</a>
                    </div>
                </div>
                <div class="social">
                    <p class="fs17 ttu mb10">Kết nối mạng xã hội</p>
                    <ul>
                        <li><a rel="nofollow" href="javascript:" title="facebook" target="_blank"><i
                                        class="fa fa-facebook"></i></a></li>
                        <li><a rel="nofollow" href="javascript:" title="Instagram" target="_blank"><i
                                        class="fa fa-instagram"></i></a></li>
                        <li><a rel="nofollow" href="javascript:" title="youtube" target="_blank"><i
                                        class="fa fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

@stop
