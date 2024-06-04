<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/2/24
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="locationbox__overlay"></div>
<div class="locationbox">
    <div class="locationbox__item locationbox__item--right">
        <p>Chọn địa chỉ nhận hàng</p>
        <a onclick="OpenLocation()" href="javascript:void(0)">Đóng</a>
    </div>
    <div class="locationbox__popup" id="lc_pop--choose">
        <div class="locationbox__popup--cnt locationbox__popup--choose">
            <div class="locationbox__popup--chooseDefault">
                <span id="locationbox__showfull" class="locationbox__showfull "><b>Chọn đầy đủ địa chỉ nhận hàng</b> để biết chính xác thời gian giao</span>
                <div class="form-group">
                    <div class="boxprov">
                        <div class="boxprov__listTT" id="location_listPro">
                            <span onclick="LocaltionShowAll(this)" id="boxprovProvince">Hồ Chí Minh</span>


                            <div id="province-box" class="boxprov__listTT--scroll">
                                <div class="stores-box">
                                    <div class="scroll-box">
                                        <div class="boxprov__listTT--bordertop"></div>
                                        <div class="search-container">
                                            <input autocomplete="off" type="text" placeholder="Nhập tỉnh, thành để tìm" onkeyup="searchLocation(this)">
                                            <button class="btn-search-location">
                                                <i class="icon-search"></i>
                                            </button>
                                        </div>
                                        <ul>
                                            <li>
                                                <a class="active" data-value="3" href="javascript:void(0)" onclick="changePoupProv(3, this)">
                                                    Hồ Chí Minh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="5" href="javascript:void(0)" onclick="changePoupProv(5, this)">
                                                    Hà Nội
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="9" href="javascript:void(0)" onclick="changePoupProv(9, this)">
                                                    Đà Nẵng
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="82" href="javascript:void(0)" onclick="changePoupProv(82, this)">
                                                    An Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="102" href="javascript:void(0)" onclick="changePoupProv(102, this)">
                                                    Bà Rịa - Vũng Tàu
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="103" href="javascript:void(0)" onclick="changePoupProv(103, this)">
                                                    Bắc Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="104" href="javascript:void(0)" onclick="changePoupProv(104, this)">
                                                    Bắc Kạn
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="105" href="javascript:void(0)" onclick="changePoupProv(105, this)">
                                                    Bạc Liêu
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="106" href="javascript:void(0)" onclick="changePoupProv(106, this)">
                                                    Bắc Ninh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="107" href="javascript:void(0)" onclick="changePoupProv(107, this)">
                                                    Bến Tre
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="108" href="javascript:void(0)" onclick="changePoupProv(108, this)">
                                                    Bình Định
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="109" href="javascript:void(0)" onclick="changePoupProv(109, this)">
                                                    Bình Dương
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="110" href="javascript:void(0)" onclick="changePoupProv(110, this)">
                                                    Bình Phước
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="111" href="javascript:void(0)" onclick="changePoupProv(111, this)">
                                                    Bình Thuận
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="81" href="javascript:void(0)" onclick="changePoupProv(81, this)">
                                                    Cà Mau
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="7" href="javascript:void(0)" onclick="changePoupProv(7, this)">
                                                    Cần Thơ
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="112" href="javascript:void(0)" onclick="changePoupProv(112, this)">
                                                    Cao Bằng
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="6" href="javascript:void(0)" onclick="changePoupProv(6, this)">
                                                    Đắk Lắk
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="113" href="javascript:void(0)" onclick="changePoupProv(113, this)">
                                                    Đắk Nông
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="114" href="javascript:void(0)" onclick="changePoupProv(114, this)">
                                                    Điện Biên
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="8" href="javascript:void(0)" onclick="changePoupProv(8, this)">
                                                    Đồng Nai
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="115" href="javascript:void(0)" onclick="changePoupProv(115, this)">
                                                    Đồng Tháp
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="116" href="javascript:void(0)" onclick="changePoupProv(116, this)">
                                                    Gia Lai
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="117" href="javascript:void(0)" onclick="changePoupProv(117, this)">
                                                    Hà Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="118" href="javascript:void(0)" onclick="changePoupProv(118, this)">
                                                    Hà Nam
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="120" href="javascript:void(0)" onclick="changePoupProv(120, this)">
                                                    Hà Tĩnh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="121" href="javascript:void(0)" onclick="changePoupProv(121, this)">
                                                    Hải Dương
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="101" href="javascript:void(0)" onclick="changePoupProv(101, this)">
                                                    Hải Phòng
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="122" href="javascript:void(0)" onclick="changePoupProv(122, this)">
                                                    Hậu Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="123" href="javascript:void(0)" onclick="changePoupProv(123, this)">
                                                    Hòa Bình
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="124" href="javascript:void(0)" onclick="changePoupProv(124, this)">
                                                    Hưng Yên
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="125" href="javascript:void(0)" onclick="changePoupProv(125, this)">
                                                    Khánh Hòa
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="126" href="javascript:void(0)" onclick="changePoupProv(126, this)">
                                                    Kiên Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="127" href="javascript:void(0)" onclick="changePoupProv(127, this)">
                                                    Kon Tum
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="128" href="javascript:void(0)" onclick="changePoupProv(128, this)">
                                                    Lai Châu
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="129" href="javascript:void(0)" onclick="changePoupProv(129, this)">
                                                    Lâm Đồng
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="130" href="javascript:void(0)" onclick="changePoupProv(130, this)">
                                                    Lạng Sơn
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="131" href="javascript:void(0)" onclick="changePoupProv(131, this)">
                                                    Lào Cai
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="132" href="javascript:void(0)" onclick="changePoupProv(132, this)">
                                                    Long An
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="133" href="javascript:void(0)" onclick="changePoupProv(133, this)">
                                                    Nam Định
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="134" href="javascript:void(0)" onclick="changePoupProv(134, this)">
                                                    Nghệ An
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="135" href="javascript:void(0)" onclick="changePoupProv(135, this)">
                                                    Ninh Bình
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="136" href="javascript:void(0)" onclick="changePoupProv(136, this)">
                                                    Ninh Thuận
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="137" href="javascript:void(0)" onclick="changePoupProv(137, this)">
                                                    Phú Thọ
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="138" href="javascript:void(0)" onclick="changePoupProv(138, this)">
                                                    Phú Yên
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="139" href="javascript:void(0)" onclick="changePoupProv(139, this)">
                                                    Quảng Bình
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="140" href="javascript:void(0)" onclick="changePoupProv(140, this)">
                                                    Quảng Nam
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="141" href="javascript:void(0)" onclick="changePoupProv(141, this)">
                                                    Quảng Ngãi
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="142" href="javascript:void(0)" onclick="changePoupProv(142, this)">
                                                    Quảng Ninh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="143" href="javascript:void(0)" onclick="changePoupProv(143, this)">
                                                    Quảng Trị
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="144" href="javascript:void(0)" onclick="changePoupProv(144, this)">
                                                    Sóc Trăng
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="145" href="javascript:void(0)" onclick="changePoupProv(145, this)">
                                                    Sơn La
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="146" href="javascript:void(0)" onclick="changePoupProv(146, this)">
                                                    Tây Ninh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="147" href="javascript:void(0)" onclick="changePoupProv(147, this)">
                                                    Thái Bình
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="148" href="javascript:void(0)" onclick="changePoupProv(148, this)">
                                                    Thái Nguyên
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="149" href="javascript:void(0)" onclick="changePoupProv(149, this)">
                                                    Thanh Hóa
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="150" href="javascript:void(0)" onclick="changePoupProv(150, this)">
                                                    Thừa Thiên Huế
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="151" href="javascript:void(0)" onclick="changePoupProv(151, this)">
                                                    Tiền Giang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="152" href="javascript:void(0)" onclick="changePoupProv(152, this)">
                                                    Trà Vinh
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="153" href="javascript:void(0)" onclick="changePoupProv(153, this)">
                                                    Tuyên Quang
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="154" href="javascript:void(0)" onclick="changePoupProv(154, this)">
                                                    Vĩnh Long
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="155" href="javascript:void(0)" onclick="changePoupProv(155, this)">
                                                    Vĩnh Phúc
                                                </a>
                                            </li>
                                            <li>
                                                <a class="" data-value="156" href="javascript:void(0)" onclick="changePoupProv(156, this)">
                                                    Yên Bái
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="locationbox__detail hide" id="lc_detail">
                    <p id="lc_detail-dis"><span>: </span><strong></strong></p>
                    <p id="lc_detail-ward"><span>: </span><strong></strong></p>
                    <a id="lc_btn-changeLc" class="locationbox__btnchangeLC" href="javascript:void(0)" onclick="locationChangeLocation();">Chọn địa chỉ khác</a>
                </div>
                <div class="locationbox__area ">
                    <div class="form-group">
                        <div class="boxprov">
                            <div class="boxprov__listTT" id="location_listDistrict">
                                <span id="boxprovDistrict" onclick="LocaltionShowAll(this)" data-crrdis="0">Vui lòng chọn Quận/Huyện</span>

                                <div id="district-box-poup" class="boxprov__listTT--scroll">
                                    <div class="stores-box">
                                        <div class="scroll-box">
                                            <div class="boxprov__listTT--bordertop"></div>
                                            <div class="warning-text">
                                                Quận 2, quận 9, quận Thủ Đức đã được thay đổi và gộp lại thành TP. Thủ Đức
                                            </div>
                                            <div class="search-container">
                                                <input autocomplete="off" type="text" placeholder="Nhập quận, huyện để tìm" onkeyup="searchLocation(this)">
                                                <button class="btn-search-location">
                                                    <i class="icon-search"></i>
                                                </button>
                                            </div>
                                            <ul>
                                                <li>
                                                    <a class="" data-dis="2087" href="javascript:void(0)" onclick="changePoupDistrict(3,2087, this)">
                                                        TP. Thủ Đức (Gồm Q2, Q9, Q.TĐ)
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="16" href="javascript:void(0)" onclick="changePoupDistrict(3,16, this)">
                                                        Quận 1
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="18" href="javascript:void(0)" onclick="changePoupDistrict(3,18, this)">
                                                        Quận 3
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="19" href="javascript:void(0)" onclick="changePoupDistrict(3,19, this)">
                                                        Quận 4
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="20" href="javascript:void(0)" onclick="changePoupDistrict(3,20, this)">
                                                        Quận 5
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="21" href="javascript:void(0)" onclick="changePoupDistrict(3,21, this)">
                                                        Quận 6
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="22" href="javascript:void(0)" onclick="changePoupDistrict(3,22, this)">
                                                        Quận 7
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="23" href="javascript:void(0)" onclick="changePoupDistrict(3,23, this)">
                                                        Quận 8
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="25" href="javascript:void(0)" onclick="changePoupDistrict(3,25, this)">
                                                        Quận 10
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="26" href="javascript:void(0)" onclick="changePoupDistrict(3,26, this)">
                                                        Quận 11
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="27" href="javascript:void(0)" onclick="changePoupDistrict(3,27, this)">
                                                        Quận 12
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="31" href="javascript:void(0)" onclick="changePoupDistrict(3,31, this)">
                                                        Quận Bình Tân
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="51" href="javascript:void(0)" onclick="changePoupDistrict(3,51, this)">
                                                        Quận Bình Thạnh
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="29" href="javascript:void(0)" onclick="changePoupDistrict(3,29, this)">
                                                        Quận Gò Vấp
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="52" href="javascript:void(0)" onclick="changePoupDistrict(3,52, this)">
                                                        Quận Phú Nhuận
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="30" href="javascript:void(0)" onclick="changePoupDistrict(3,30, this)">
                                                        Quận Tân Bình
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="33" href="javascript:void(0)" onclick="changePoupDistrict(3,33, this)">
                                                        Quận Tân Phú
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="36" href="javascript:void(0)" onclick="changePoupDistrict(3,36, this)">
                                                        Huyện Bình Chánh
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="61" href="javascript:void(0)" onclick="changePoupDistrict(3,61, this)">
                                                        Huyện Cần Giờ
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="34" href="javascript:void(0)" onclick="changePoupDistrict(3,34, this)">
                                                        Huyện Củ Chi
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="32" href="javascript:void(0)" onclick="changePoupDistrict(3,32, this)">
                                                        Huyện Hóc Môn
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="" data-dis="35" href="javascript:void(0)" onclick="changePoupDistrict(3,35, this)">
                                                        Huyện Nhà Bè
                                                    </a>
                                                </li>
                                            </ul>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="boxprov">
                            <div class="boxprov__listTT" id="location_listWard">
                                <span class="disabled" id="boxprovWard" onclick="LocaltionShowAll(this)" data-ward="0">Vui lòng chọn Phường/Xã</span>
                                <div id="ward-box" class="boxprov__listTT--scroll" style="display: none;">
                                    <div class="boxprov__listTT--scrollcnt">
                                        <input autocomplete="off" type="text" placeholder="Nhập phường, xã để tìm" onkeyup="searchLocation(this)">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="boxprov">
                            <input type="text" placeholder="Số nhà, tên đường (không bắt buộc)" id="locationAddress">
                        </div>
                    </div>
                </div>

                <input type="hidden" id="hdLocationProvinceId" value="3">
                <input type="hidden" id="hdLocationDisId" value="0">
                <input type="hidden" id="hdLocationWardId" value="0">
                <input type="hidden" id="hdLocationAddress">
                <b id="h-provincename" style="display:none!important" data-provinceid="3">Hồ Chí Minh</b>

            </div>
            <div class="accept">
                <a href="javascript:void(0)" onclick="locationConfirm()" class="btnConfirm" id="lc_btn-Confirm">Xác nhận</a>
            </div>
        </div>

    </div>
</div>











<section>

    <div class="bar-top">
        <aside class="homebanner">
            <div id="sync1" class="slider-banner owl-carousel owl-loaded owl-drag">








                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-5868px, 0px, 0px); transition: all 0.25s ease 0s; width: 10432px;"><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dong-ho-thong-minh" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45112&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-13.png"/>" alt="smartwatch" src="<c:url value="/assets/web/assets/images/830-300-830x300-13.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href=" https://www.thegioididong.com/tin-tuc/sam-laptop-mua-tuu-truong-tai-the-gioi-di-dong-1371471" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45154&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-16.png"/>" alt="Laptop Tựu Trường[break]Ưu Đãi X3" src="<c:url value="/assets/web/assets/images/830-300-830x300-16.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/khuyen-mai-soc/dong-ho-thuy-si" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45099&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-12.png"/>" alt="dong ho thuy sy" src="<c:url value="/assets/web/assets/images/830-300-830x300-12.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/mua-online-gia-re#sac-du-phong" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45123&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-15.png"/>" alt="phụ kiện" src="<c:url value="/assets/web/assets/images/830-300-830x300-15.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dtdd/oppo-reno6-z-5g" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45068&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/renoz-830-300-830x300-2.png"/>" alt="Reno6 Z"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/khuyen-mai-soc/samsung-galaxy-s21" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45011&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-11.png"/>" alt="Samsung S21" src="<c:url value="/assets/web/assets/images/830-300-830x300-11.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/apple#iphone" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45169&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/iphone-12-830-300-830x300.png"/>" alt="iphone" src="<c:url value="/assets/web/assets/images/iphone-12-830-300-830x300.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dtdd/vivo-y72-5g" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45175&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-17.png"/>" alt="vivo" src="<c:url value="/assets/web/assets/images/830-300-830x300-17.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dong-ho-thong-minh" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45112&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-13.png"/>" alt="smartwatch" src="<c:url value="/assets/web/assets/images/830-300-830x300-13.png"/>"></a>
                </div></div><div class="owl-item active" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href=" https://www.thegioididong.com/tin-tuc/sam-laptop-mua-tuu-truong-tai-the-gioi-di-dong-1371471" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45154&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-16.png"/>" alt="Laptop Tựu Trường[break]Ưu Đãi X3" src="<c:url value="/assets/web/assets/images/830-300-830x300-16.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/khuyen-mai-soc/dong-ho-thuy-si" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45099&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-12.png"/>" alt="dong ho thuy sy" src="<c:url value="/assets/web/assets/images/830-300-830x300-12.png"/>"></a>
                </div></div><div class="owl-item" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/mua-online-gia-re#sac-du-phong" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45123&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-15.png"/>" alt="phụ kiện" src="<c:url value="/assets/web/assets/images/830-300-830x300-15.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dtdd/oppo-reno6-z-5g" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45068&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/renoz-830-300-830x300-2.png"/>" alt="Reno6 Z"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/khuyen-mai-soc/samsung-galaxy-s21" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45011&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-11.png"/>" alt="Samsung S21" src="<c:url value="/assets/web/assets/images/830-300-830x300-11.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/apple#iphone" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45169&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/iphone-12-830-300-830x300.png"/>" alt="iphone" src="<c:url value="/assets/web/assets/images/iphone-12-830-300-830x300.png"/>"></a>
                </div></div><div class="owl-item cloned" style="width: 652px;"><div class="item">
                    <a aria-label="slide" data-cate="0" data-place="1546" href="/dtdd/vivo-y72-5g" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45175&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/830-300-830x300-17.png"/>" alt="vivo" src="<c:url value="/assets/web/assets/images/830-300-830x300-17.png"/>"></a>
                </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
            <div id="sync2" class="slider-banner owl-carousel owl-loaded owl-drag">








                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(-391px, 0px, 0px); transition: all 0.3s ease 0s; width: 1044px;"><div class="owl-item" style="width: 130.4px;"><div class="item">
                    <h3>
                        OPPO Reno6 Z 5G<br>Giá 9.490.000đ, Quà Ngon
                    </h3>
                </div></div><div class="owl-item" style="width: 130.4px;"><div class="item">
                    <h3>
                        Galaxy S21 Series 5G<br>Giảm Đến 5 Triệu
                    </h3>
                </div></div><div class="owl-item" style="width: 130.4px;"><div class="item">
                    <h3>
                        Sắm iPhone 12<br>Giảm Đến 3 Triệu
                    </h3>
                </div></div><div class="owl-item active" style="width: 130.4px;"><div class="item">
                    <h3>
                        Sắm Vivo Y72 5G<br>Giảm Ngay 400 Ngàn
                    </h3>
                </div></div><div class="owl-item active" style="width: 130.4px;"><div class="item">
                    <h3>
                        Smartwatch<br>Giảm Đến 35%
                    </h3>
                </div></div><div class="owl-item synced active" style="width: 130.4px;"><div class="item">
                    <h3>
                        Laptop Tựu Trường<br>Ưu Đãi X3
                    </h3>
                </div></div><div class="owl-item active" style="width: 130.4px;"><div class="item">
                    <h3>
                        Đồng Hồ Thụy Sỹ<br>Giảm Sốc 45%
                    </h3>
                </div></div><div class="owl-item active" style="width: 130.4px;"><div class="item">
                    <h3>
                        Sắm Phụ Kiện<br>Giảm Đến 45%
                    </h3>
                </div></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
        </aside>

        <div class="preorder-hot">
            <a aria-label="slide" data-cate="0" data-place="1600" href="/dtdd" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=43731&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/1-340x340.jpg"/>" alt="Điện thoại "></a><a aria-label="slide" data-cate="0" data-place="1548" href="/dtdd/samsung-galaxy-note-20-ultra" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=41695&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/StikyT8-340x340.jpg"/>" alt="Galaxy Note20"></a><a aria-label="slide" data-cate="0" data-place="1548" href="/laptop-gaming?itm_source=homepage&amp;itm_medium=hot_banner&amp;itm_campaign=internal_tracking&amp;itm_content=desktop_1548" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=41696&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/laptopdesk-340x340.jpg"/>" alt="Laptop Gaming"></a><a aria-label="slide" data-cate="0" data-place="1600" href="/dong-ho-thong-minh" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=43728&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/DesktopTGDD170170-340x340.png"/>" alt="Banner mặc định backup sản phẩm hot"></a>    </div>

    </div>
    <div class="sub-banner">
        <a aria-label="slide" data-cate="0" data-place="1593" href="/mua-online-gia-re" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45165&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/1200-60-1200x60.png"/>" alt="Đồng Hành Mùa Dịch"></a>    </div>

    <!--  Săn sale online -->
    <div class="prd-promo" style="background-color:#fed100" data-html-id="3429">
        <div class="prd-promo__top clearfix">
            <p class="prd-promo__title">Săn Sale Online Mỗi Ngày</p>
        </div>
        <div class="listproduct slider-promo owl-carousel owl-loaded owl-drag" data-size="20">




















            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 4057px;"><div class="owl-item active" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="236186" data-pos="1">
                <a href="/dtdd/oppo-reno6" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại OPPO Reno6 5G" data-id="236186" data-price="12990000.0" data-brand="OPPO" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/oppo-reno6-5g-aurora-600x600.jpg"/>" class=" lazyloaded" alt="OPPO Reno6 5G" width="210" height="210" src="<c:url value="/assets/web/assets/images/oppo-reno6-5g-aurora-600x600.jpg"/>">
                        <img src="<c:url value="/assets/web/assets/images/label-moi-ra-mat-fnal.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                    </div>
                    <p class="preorder">Đặt trước đến 06/08</p>        <h3>OPPO Reno6 5G</h3>
                    <p class="item-txt-online">Hàng sắp về</p>
                    <strong class="price">12.990.000₫</strong>
                    <p class="item-gift">Tặng Tai nghe OPPO W32 trị giá 1.990.000đ + Trả góp 0%</p>


                </a>

            </div></div><div class="owl-item active" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="213033" data-pos="2">
                <a href="/dtdd/iphone-12-pro-max" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại iPhone 12 Pro Max 128GB" data-id="213033" data-price="30990000.0" data-brand="iPhone (Apple)" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg"/>" class=" lazyloaded" alt="iPhone 12 Pro Max 128GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg"/>">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>iPhone 12 Pro Max 128GB</h3>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">32.990.000₫</p>
                        <span class="percent">-6%</span>
                    </div>
                    <strong class="price">30.990.000₫</strong>
                    <p class="item-gift">Quà <b>400.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">91</p>
                    </div>


                </a>

            </div></div><div class="owl-item active" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="236085" data-pos="3">
                <a href="/dtdd/samsung-galaxy-a52-8gb-256gb" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Samsung Galaxy A52 (8GB/256GB)" data-id="236085" data-price="9290000.0" data-brand="Samsung" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-a52-8gb-256gb-thumb-white-600x600-600x600.jpg"/>" class=" lazyloaded" alt="Galaxy A52 8GB/256GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-a52-8gb-256gb-thumb-white-600x600-600x600.jpg"/>">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Galaxy A52 8GB/256GB</h3>
                    <div class="box-p">
                        <p class="price-old black">10.290.000₫</p>
                        <span class="percent">-9%</span>
                    </div>
                    <strong class="price">9.290.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-half"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">41</p>
                    </div>


                </a>

            </div></div><div class="owl-item active" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="233241" data-pos="4">
                <a href="/dtdd/xiaomi-mi-11-lite-4g" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại Xiaomi Mi 11 Lite" data-id="233241" data-price="7090000.0" data-brand="Xiaomi" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/xiaomi-mi-11-lite-4g-blue-600x600.jpg"/>" class=" lazyloaded" alt="Xiaomi Mi 11 Lite" width="210" height="210" src="<c:url value="/assets/web/assets/images/xiaomi-mi-11-lite-4g-blue-600x600.jpg"/>">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Xiaomi Mi 11 Lite</h3>
                    <div class="box-p">
                        <p class="price-old black">7.990.000₫</p>
                        <span class="percent">-11%</span>
                    </div>
                    <strong class="price">7.090.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">433</p>
                    </div>


                </a>

            </div></div><div class="owl-item active" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="236588" data-pos="5">
                <a href="/dtdd/realme-8-5g" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại Realme 8 5G" data-id="236588" data-price="7490000.0" data-brand="Realme" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/realme-8-5g-blue-1-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="Realme 8 5G" width="210" height="210" src="<c:url value="/assets/web/assets/images/realme-8-5g-blue-1-600x600.jpg"/>">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Realme 8 5G</h3>
                    <div class="box-p">
                        <p class="price-old black">7.990.000₫</p>
                        <span class="percent">-6%</span>
                    </div>
                    <strong class="price">7.490.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="228376" data-pos="6">
                <a href="/dtdd/vivo-y20s" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại Vivo Y20s" data-id="228376" data-price="4690000.0" data-brand="Vivo" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/vivo-y20s-xanh-1-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="Vivo Y20s" width="210" height="210" src="<c:url value="/assets/web/assets/images/vivo-y20s-xanh-1-600x600.jpg"/>">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Vivo Y20s</h3>
                    <div class="box-p">
                        <p class="price-old black">4.990.000₫</p>
                        <span class="percent">-6%</span>
                    </div>
                    <strong class="price">4.690.000₫</strong>
                    <p class="item-gift">Quà <b>200.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-half"></i>
                            <i class="icon-star-dark"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">107</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="217536" data-pos="7">
                <a href="/dtdd/samsung-galaxy-m51" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Samsung Galaxy M51" data-id="217536" data-price="8490000.0" data-brand="Samsung" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-m51-trang-new-600x600-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="Samsung Galaxy M51" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-m51-trang-new-600x600-600x600.jpg"/>">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Samsung Galaxy M51</h3>
                    <div class="box-p">
                        <p class="price-old black">9.490.000₫</p>
                        <span class="percent">-10%</span>
                    </div>
                    <strong class="price">8.490.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">648</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="153856" data-pos="8">
                <a href="/dtdd/iphone-11" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại iPhone 11 64GB" data-id="153856" data-price="15490000.0" data-brand="iPhone (Apple)" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/iphone-xi-do-600x600.jpg"/>" class=" lazyloaded" alt="iPhone 11 64GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/iphone-xi-do-600x600.jpg"/>">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>iPhone 11 64GB</h3>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">17.490.000₫</p>
                        <span class="percent">-11%</span>
                    </div>
                    <strong class="price">15.490.000₫</strong>
                    <p class="item-gift">Quà <b>400.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-half"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">282</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="233460" data-pos="9">
                <a href="/dtdd/oppo-reno5-5g" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại OPPO Reno5 5G" data-id="233460" data-price="11390000.0" data-brand="OPPO" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/oppo-reno5-5g-thumb-600x600.jpg"/>" class="lazyload" alt="OPPO Reno5 5G" width="210" height="210">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>OPPO Reno5 5G</h3>
                    <div class="box-p">
                        <p class="price-old black">11.990.000₫</p>
                        <span class="percent">-5%</span>
                    </div>
                    <strong class="price">11.390.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">51</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="233130" data-pos="10">
                <a href="/dtdd/xiaomi-redmi-9t-6gb" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại Xiaomi Redmi 9T (6GB/128GB)" data-id="233130" data-price="4190000.0" data-brand="Xiaomi" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/xiaomi-redmi-9t-6gb-110621-080650-600x600.jpg"/>" class="lazyload" alt="Xiaomi Redmi 9T (6GB/128GB)" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-02.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_42 tgdd">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Xiaomi Redmi 9T (6GB/128GB)</h3>
                    <div class="box-p">
                        <p class="price-old black">4.990.000₫</p>
                        <span class="percent">-16%</span>
                    </div>
                    <strong class="price">4.190.000₫</strong>
                    <p class="item-gift">Quà <b>200.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">269</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="226436" data-pos="11">
                <a href="/dtdd/vsmart-live-4" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại Vsmart Live 4 4GB" data-id="226436" data-price="3290000.0" data-brand="Vsmart" data-cate="Điện thoại" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/vsmart-live-4-xanh-la-600x600.jpg"/>" class="lazyload" alt="Vsmart Live 4 4GB" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-02.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_42 tgdd">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Vsmart Live 4 4GB</h3>
                    <div class="box-p">
                        <p class="price-old black">4.090.000₫</p>
                        <span class="percent">-19%</span>
                    </div>
                    <strong class="price">3.290.000₫</strong>
                    <p class="item-gift">Quà <b>200.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">254</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="240250" data-pos="12">
                <a href="/laptop/lenovo-ideapad-5-14itl05-i5-82fe00krvn" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Laptop Lenovo IdeaPad 5 14ITL05 i5 1135G7/16GB/512GB/Win10 (82FE00KRVN)" data-id="240250" data-price="19590000.0" data-brand="Lenovo" data-cate="Laptop" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/lenovo-ideapad-5-14itl05-i5-82fe00krvn-600x600.jpg"/>" class="lazyload" alt="Lenovo IdeaPad 5 14ITL05 i5 1135G7 (82FE00KRVN)" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-01.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_44 tgdd">
                    </div>
                    <h3>Lenovo IdeaPad 5 14ITL05 i5 1135G7 (82FE00KRVN)</h3>
                    <div class="item-compare">
                        <span>RAM 16 GB</span>
                        <span>SSD 512 GB</span>
                    </div>
                    <div class="box-p">
                        <p class="price-old black">19.990.000₫</p>
                    </div>
                    <strong class="price">19.590.000₫</strong>
                    <p class="item-gift">Quà <b>400.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">7</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="231255" data-pos="13">
                <a href="/laptop/apple-macbook-pro-2020-z11c" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Laptop Apple MacBook Pro M1 2020 16GB/512GB/Space Grey (Z11C)" data-id="231255" data-price="42690000.0" data-brand="MacBook" data-cate="Laptop" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/apple-macbook-pro-2020-z11c-3-600x600.jpg"/>" class="lazyload" alt="MacBook Pro M1 2020 Space Grey (Z11C)" width="210" height="210">
                    </div>
                    <h3>MacBook Pro M1 2020 Space Grey (Z11C)</h3>
                    <div class="item-compare">
                        <span>RAM 16 GB</span>
                        <span>SSD 512 GB</span>
                    </div>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">44.990.000₫</p>
                        <span class="percent">-5%</span>
                    </div>
                    <strong class="price">42.690.000₫</strong>
                    <p class="item-gift">Quà <b>300.000₫</b></p>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                        </p>
                        <p class="item-rating-total">7</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="247313" data-pos="14">
                <a href="/laptop/acer-nitro-5-gaming-an515-57-50ft-i5-nhqd8sv003" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Laptop Acer Nitro 5 Gaming AN515 57 50FT i5 11400H/16GB/512GB/4GB RTX3050/144Hz/Balo/Win10 (NH.QD8SV.003)" data-id="247313" data-price="26490000.0" data-brand="Acer" data-cate="Laptop" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/acer-nitro-5-gaming-an515-57-50ft-i5-nhqd8sv003-600x600.jpg"/>" class="lazyload" alt="Acer Nitro 5 Gaming AN515 57 50FT i5 11400H (NH.QD8SV.003)" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/11th-gen-core-i5-processors-badge-rwd.png.rendition.intel.web.550.550.jpg"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_44 tgdd">
                    </div>
                    <h3>Acer Nitro 5 Gaming AN515 57 50FT i5 11400H (NH.QD8SV.003)</h3>
                    <div class="item-compare">
                        <span>RAM 16 GB</span>
                        <span>SSD 512 GB</span>
                    </div>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">27.490.000₫</p>
                    </div>
                    <strong class="price">26.490.000₫</strong>
                    <p class="item-gift">Quà <b>2.180.000₫</b></p>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="245569" data-pos="15">
                <a href="/dong-ho-thong-minh/amazfit-gts-2-mini" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Đồng hồ thông minh Amazfit GTS 2 mini" data-id="245569" data-price="1990000.0" data-brand="Huami Amazfit" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/amazfit-gts-2-mini-xanh-la-1-thumb-600x600.jpg"/>" class="lazyload" alt="Amazfit GTS 2 mini" width="210" height="210">
                    </div>
                    <h3>Đồng hồ thông minh Amazfit GTS 2 mini</h3>
                    <div class="item-compare">
                        <span>Đo nồng độ oxy</span>
                    </div>
                    <div class="box-p">
                        <p class="price-old black">2.299.000₫</p>
                        <span class="percent">-13%</span>
                    </div>
                    <strong class="price">1.990.000₫</strong>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="229044" data-pos="16">
                <a href="/dong-ho-thong-minh/apple-watch-s6-40mm-vien-nhom-day-cao-su" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Apple Watch S6 40mm viền nhôm dây cao su hồng" data-id="229044" data-price="9491000.0" data-brand="Apple" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/apple-watch-s6-40mm-vien-nhom-day-cao-su-01-600x600.jpg"/>" class="lazyload" alt="Apple Watch S6 40mm viền nhôm dây cao su" width="210" height="210">
                    </div>
                    <h3>Apple Watch S6 40mm viền nhôm dây cao su hồng</h3>
                    <div class="item-compare">
                        <span>Đo nồng độ oxy</span>
                        <span>Có nghe gọi</span>
                    </div>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">11.990.000₫</p>
                        <span class="percent">-20%</span>
                    </div>
                    <strong class="price">9.491.000₫</strong>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="226476" data-pos="17">
                <a href="/dong-ho-thong-minh/samsung-galaxy-watch-3-lte-45mm" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Samsung Galaxy Watch 3 LTE 45mm viền thép dây da" data-id="226476" data-price="7490000.0" data-brand="Samsung" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-watch-3-lte-45mmava-600x600.jpg"/>" class="lazyload" alt="Samsung Galaxy Watch 3 LTE 45mm viền thép dây da" width="210" height="210">
                    </div>
                    <h3>Samsung Galaxy Watch 3 LTE 45mm viền thép dây da</h3>
                    <div class="item-compare">
                        <span>Đo nồng độ oxy</span>
                        <span>Có nghe gọi</span>
                    </div>
                    <div class="box-p">
                        <p class="price-old black">10.990.000₫</p>
                        <span class="percent">-31%</span>
                    </div>
                    <strong class="price">7.490.000₫</strong>
                    <div class="item-rating">
                        <p>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star"></i>
                            <i class="icon-star-dark"></i>
                        </p>
                        <p class="item-rating-total">50</p>
                    </div>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="242034" data-pos="18">
                <a href="/tai-nghe/bluetooth-true-wireless-galaxy-buds-pro-bac" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc" data-id="242034" data-price="3990000.0" data-brand="Samsung" data-cate="Tai nghe" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/bluetooth-true-wireless-galaxy-buds-pro-bac-ava-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_54 tgdd">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc</h3>
                    <div class="box-p">
                        <p class="price-old black">4.990.000₫</p>
                        <span class="percent">-20%</span>
                    </div>
                    <strong class="price">3.990.000₫</strong>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="236255" data-pos="19">
                <a href="/sac-dtdd/oppo-vooc-30w-pbv02" class=" main-contain" data-s="OnlineSavingCMS" data-site="1" data-pro="3" data-cache="False" data-name="Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 VOOC OPPO PBV02" data-id="236255" data-price="1080000.0" data-brand="OPPO" data-cate="Sạc dự phòng" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/oppo-vooc-30w-pbv02-1-600x600.jpg"/>" class="lazyload" alt="OPPO PBV02" width="210" height="210">
                        <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_57 tgdd">
                    </div>
                    <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 VOOC OPPO PBV02</h3>
                    <p class="item-txt-online">Online giá rẻ</p>
                    <div class="box-p">
                        <p class="price-old black">1.800.000₫</p>
                        <span class="percent">-40%</span>
                    </div>
                    <strong class="price">1.080.000₫</strong>


                </a>

            </div></div><div class="owl-item" style="width: 192.8px; margin-right: 10px;"><div class="item" data-id="225613" data-pos="20">
                <a href="/loa-laptop/loa-bluetooth-sony-srs-xb33" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Loa Bluetooth Sony Extra Bass SRS-XB33" data-id="225613" data-price="2950000.0" data-brand="Sony" data-cate="Loa" data-box="BoxHome">
                    <div class="item-label">
                    </div>
                    <div class="item-img">
                        <img data-src="<c:url value="/assets/web/assets/images/loa-bluetooth-sony-srs-xb33-av-600x600.jpg"/>" class="lazyload" alt="Loa Bluetooth Sony SRS-XB33" width="210" height="210">
                    </div>
                    <h3>Loa Bluetooth Sony Extra Bass SRS-XB33</h3>
                    <div class="box-p">
                        <p class="price-old black">3.690.000₫</p>
                        <span class="percent">-20%</span>
                    </div>
                    <strong class="price">2.950.000₫</strong>


                </a>

            </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
    </div>
    <!-- End -->
    <!-- Bạn đã xem -->
    <div class="watched"></div>
    <!-- End -->
    <!-- Điện thoại -->
    <div class="box-common">
        <div class="box-common__top clearfix">
            <h2 class="box-common__title">ĐIỆN THOẠI NỔI BẬT NHẤT</h2>

            <div class="box-common__link" data-size="3">
                <a href="https://www.thegioididong.com/dtdd/samsung-galaxy-a72" data-index="1">
                    Samsung Galaxy A72
                </a>
                <a href="https://www.thegioididong.com/dtdd/iphone-12-pro-max" data-index="2">
                    iPhone 12 Pro Max 128GB
                </a>
                <a href="https://www.thegioididong.com/dtdd/oppo-reno6-z-5g" data-index="3">
                    Oppo Reno6 Z 5G
                </a>
                <a class="readmore-btn" href="dtdd">Xem tất cả <b>179</b> Điện thoại</a>
            </div>
        </div>
        <div class="box-common__main">
            <div class="listproduct " data-size="10">
                <div class="item" data-id="224859" data-pos="1">
                    <a href="/dtdd/samsung-galaxy-s20-fan-edition" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Samsung Galaxy S20 FE (8GB/256GB)" data-id="224859" data-price="13990000.0" data-brand="Samsung" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="Samsung Galaxy S20 FE (8GB/256GB)" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-s20-fan-edition-090320-040338-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Samsung Galaxy S20 FE (8GB/256GB)</h3>
                        <div class="box-p">
                            <p class="price-old black">15.490.000₫</p>
                            <span class="percent">-9%</span>
                        </div>
                        <strong class="price">13.990.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">80</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="213031" data-pos="2">
                    <a href="/dtdd/iphone-12" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại iPhone 12 64GB" data-id="213031" data-price="20690000.0" data-brand="iPhone (Apple)" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/iphone-12-violet-1-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="iPhone 12 64GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/iphone-12-violet-1-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>iPhone 12 64GB</h3>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">22.990.000₫</p>
                            <span class="percent">-10%</span>
                        </div>
                        <strong class="price">20.690.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">51</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="235971" data-pos="3">
                    <a href="/dtdd/xiaomi-redmi-note-10-5g" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Xiaomi Redmi Note 10 5G 8GB" data-id="235971" data-price="5690000.0" data-brand="Xiaomi" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/xiaomi-redmi-note-10-5g-xanh-bong-dem-1-600x600.jpg"/>" class=" ls-is-cached lazyloaded" alt="Xiaomi Redmi Note 10 5G 8GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/xiaomi-redmi-note-10-5g-xanh-bong-dem-1-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Xiaomi Redmi Note 10 5G 8GB</h3>
                        <div class="box-p">
                            <p class="price-old black">5.990.000₫</p>
                            <span class="percent">-5%</span>
                        </div>
                        <strong class="price">5.690.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">238</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="230630" data-pos="4">
                    <a href="/dtdd/vivo-y12s-4gb-128gb" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Vivo Y12s (4GB/128GB)" data-id="230630" data-price="3790000.0" data-brand="Vivo" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/vivo-y12s-den-new-600x600-600x600.jpg"/>" class=" lazyloaded" alt="Vivo Y12s (4GB/128GB)" width="210" height="210" src="<c:url value="/assets/web/assets/images/vivo-y12s-den-new-600x600-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Vivo Y12s (4GB/128GB)</h3>
                        <div class="box-p">
                            <p class="price-old black">4.290.000₫</p>
                            <span class="percent">-11%</span>
                        </div>
                        <strong class="price">3.790.000₫</strong>
                        <p class="item-gift">Quà <b>200.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">54</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="239747" data-pos="5">
                    <a href="/dtdd/oppo-reno6-z-5g" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại OPPO Reno6 Z 5G" data-id="239747" data-price="9490000.0" data-brand="OPPO" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/oppo-reno6-z-5g-aurora-1-600x600.jpg"/>" class=" lazyloaded" alt="OPPO Reno6 Z 5G" width="210" height="210" src="<c:url value="/assets/web/assets/images/oppo-reno6-z-5g-aurora-1-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/label-moi-ra-mat-fnal.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="HOT SALE MỞ BÁN" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>HOT SALE MỞ BÁN</span></p>        <h3>OPPO Reno6 Z 5G</h3>
                        <strong class="price">9.490.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>


                    </a>

                </div>
                <div class="item" data-id="228967" data-pos="6">
                    <a href="/dtdd/samsung-galaxy-a52" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Samsung Galaxy A52 (8GB/128GB)" data-id="228967" data-price="8790000.0" data-brand="Samsung" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-a52-8gb-256gb-thumb-violet-600x600-600x600.jpg"/>" class=" lazyloaded" alt="Galaxy A52 8GB/128GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-a52-8gb-256gb-thumb-violet-600x600-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Galaxy A52 8GB/128GB</h3>
                        <div class="box-p">
                            <p class="price-old black">9.290.000₫</p>
                            <span class="percent">-5%</span>
                        </div>
                        <strong class="price">8.790.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">73</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="240286" data-pos="7">
                    <a href="/dtdd/vivo-y53s" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Vivo Y53s" data-id="240286" data-price="6990000.0" data-brand="Vivo" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/vivo-y53s-xanh-600x600.jpg"/>" class=" lazyloaded" alt="Vivo Y53s" width="210" height="210" src="<c:url value="/assets/web/assets/images/vivo-y53s-xanh-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Vivo Y53s</h3>
                        <strong class="price">6.990.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">13</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="241265" data-pos="8">
                    <a href="/dtdd/realme-c21y" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Realme C21Y 4GB" data-id="241265" data-price="3790000.0" data-brand="Realme" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/realme-c21y-black-600x600.jpg"/>" class=" lazyloaded" alt="Realme C21Y 4GB" width="210" height="210" src="<c:url value="/assets/web/assets/images/realme-c21y-black-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Realme C21Y 4GB</h3>
                        <div class="box-p">
                            <p class="price-old black">3.990.000₫</p>
                            <span class="percent">-5%</span>
                        </div>
                        <strong class="price">3.790.000₫</strong>
                        <p class="item-gift">Quà <b>200.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">25</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="220438" data-pos="9">
                    <a href="/dtdd/oppo-reno5" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Điện thoại OPPO Reno5" data-id="220438" data-price="8250000.0" data-brand="OPPO" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/oppo-reno5-trang-600x600-1-600x600.jpg"/>" class=" lazyloaded" alt="OPPO Reno5" width="210" height="210" src="<c:url value="/assets/web/assets/images/oppo-reno5-trang-600x600-1-600x600.jpg"/>">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>OPPO Reno5</h3>
                        <div class="box-p">
                            <p class="price-old black">8.690.000₫</p>
                            <span class="percent">-5%</span>
                        </div>
                        <strong class="price">8.250.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">744</p>
                        </div>


                    </a>

                </div>
                <div class="item" data-id="237768" data-pos="10">
                    <a href="/dtdd/vsmart-star-5-4gb-64gb" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Điện thoại Vsmart Star 5 (4GB/64GB)" data-id="237768" data-price="2790000.0" data-brand="Vsmart" data-cate="Điện thoại" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/vsmart-star-5-thumb-black-600x600.jpg"/>" class=" lazyloaded" alt="Vsmart Star 5 (4GB/64GB)" width="210" height="210" src="<c:url value="/assets/web/assets/images/vsmart-star-5-thumb-black-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label_01-02.png"/>" width="40" height="40" class="lbliconimg lbliconimg_42 tgdd ls-is-cached lazyloaded">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class=" ls-is-cached lazyloaded" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>" src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Vsmart Star 5 (4GB/64GB)</h3>
                        <div class="box-p">
                            <p class="price-old black">3.290.000₫</p>
                            <span class="percent">-15%</span>
                        </div>
                        <strong class="price">2.790.000₫</strong>
                        <p class="item-gift">Quà <b>200.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">16</p>
                        </div>


                    </a>

                </div>
            </div>
        </div>
    </div>

    <!-- End -->
    <!-- Laptop, tablet -->
    <div class="box-common">
        <div class="box-common__top clearfix">
            <h2 class="box-common__title">LAPTOP, TABLET NỔI BẬT NHẤT</h2>

            <div class="box-common__link" data-size="3">
                <a href="https://www.thegioididong.com/laptop-asus" data-index="1">
                    Laptop Asus
                </a>
                <a href="https://www.thegioididong.com/laptop-hp-compaq" data-index="2">
                    Laptop HP
                </a>
                <a href="https://www.thegioididong.com/may-tinh-bang/ipad-air-4-wifi-64gb-2020" data-index="1">
                    iPad Air 4 Wifi 64GB
                </a>
                <a href="/laptop" class="readmore-btn laptop"><span>Xem tất cả <b>129</b> Laptop</span></a>
                <a href="/may-tinh-bang" class="readmore-btn tablet"><span>Xem tất cả <b>38</b> Tablet</span></a>
            </div>
        </div>
        <div class="box-common__main">
            <div class="listproduct slider-home owl-carousel owl-loaded owl-drag" data-size="10">










                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2048px;"><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="232192" data-pos="1">
                    <a href="/laptop/lenovo-ideapad-slim-5-15itl05-i5-82fg001pvn" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Lenovo IdeaPad Slim 5 15ITL05 i5 1135G7/8GB/512GB/Win10 (82FG001PVN)" data-id="232192" data-price="18090000.0" data-brand="Lenovo" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/lenovo-ideapad-slim-5-15itl05-i5-82fg001pvn-144320-064322-600x600.jpg"/>" class=" lazyloaded" alt="Lenovo IdeaPad Slim 5 15ITL05 (82FG001PVN)" width="210" height="210" src="<c:url value="/assets/web/assets/images/lenovo-ideapad-slim-5-15itl05-i5-82fg001pvn-144320-064322-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/11th-gen-core-i5-processors-badge-rwd.png.rendition.intel.web.550.550.jpg"/>" width="40" height="40" class="lbliconimg lbliconimg_44 tgdd ls-is-cached lazyloaded">
                        </div>
                        <h3>Lenovo IdeaPad Slim 5 15ITL05 (82FG001PVN)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">18.490.000₫</p>
                        </div>
                        <strong class="price">18.090.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">17</p>
                        </div>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="240249" data-pos="2">
                    <a href="/laptop/lenovo-ideapad-3-15itl6-i5-82h80042vn" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Lenovo IdeaPad 3 15ITL6 i5 1135G7/8GB/512GB/Win10 (82H80042VN)" data-id="240249" data-price="17590000.0" data-brand="Lenovo" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/lenovo-ideapad-3-15itl6-i5-82h80042vn-600x600.jpg"/>" class=" lazyloaded" alt="Lenovo IdeaPad 3 15ITL6 i5 1135G7 (82H80042VN)" width="210" height="210" src="<c:url value="/assets/web/assets/images/lenovo-ideapad-3-15itl6-i5-82h80042vn-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label_01-01.png"/>" width="40" height="40" class="lbliconimg lbliconimg_44 tgdd ls-is-cached lazyloaded">
                        </div>
                        <h3>Lenovo IdeaPad 3 15ITL6 i5 1135G7 (82H80042VN)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">17.990.000₫</p>
                        </div>
                        <strong class="price">17.590.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="239538" data-pos="3">
                    <a href="/laptop/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Acer Aspire 7 Gaming A715 41G R150 R7 3750H/8GB/512GB/4GB GTX1650Ti/Balo/Win10 (NH.Q8SSV.004)" data-id="239538" data-price="20490000.0" data-brand="Acer" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-600x600.jpg"/>" class=" lazyloaded" alt="Acer Aspire 7 Gaming A715 41G R150 R7 3750H (NH.Q8SSV.004)" width="210" height="210" src="<c:url value="/assets/web/assets/images/acer-aspire-7-a715-41g-r150-r7-nhq8ssv004-600x600.jpg"/>">
                        </div>
                        <h3>Acer Aspire 7 Gaming A715 41G R150 R7 3750H (NH.Q8SSV.004)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">21.490.000₫</p>
                        </div>
                        <strong class="price">20.490.000₫</strong>
                        <p class="item-gift">Quà <b>2.180.000₫</b></p>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="244354" data-pos="4">
                    <a href="/laptop/hp-pavilion-15-eg0505tu-i5-46m02pa" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop HP Pavilion 15 eg0505TU i5 1135G7/8GB/512GB/Win10 (46M02PA)" data-id="244354" data-price="18590000.0" data-brand="HP" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/hp-pavilion-15-eg0505tu-i5-46m02pa-15-600x600.jpg"/>" class=" lazyloaded" alt="HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA)" width="210" height="210" src="<c:url value="/assets/web/assets/images/hp-pavilion-15-eg0505tu-i5-46m02pa-15-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/11th-gen-core-i5-processors-badge-rwd.png.rendition.intel.web.550.550.jpg"/>" width="40" height="40" class="lbliconimg lbliconimg_44 tgdd ls-is-cached lazyloaded">
                        </div>
                        <h3>HP Pavilion 15 eg0505TU i5 1135G7 (46M02PA)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">18.990.000₫</p>
                        </div>
                        <strong class="price">18.590.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-half"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">7</p>
                        </div>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="240254" data-pos="5">
                    <a href="/may-tinh-bang/samsung-galaxy-tab-s7-fan-editon" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Máy tính bảng Samsung Galaxy Tab S7 FE" data-id="240254" data-price="13990000.0" data-brand="Samsung" data-cate="Máy tính bảng" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-tab-s7-fe-green-600x600.jpg"/>" class=" lazyloaded" alt="Samsung Galaxy Tab S7 FE" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-tab-s7-fe-green-600x600.jpg"/>">
                        </div>
                        <h3>Samsung Galaxy Tab S7 FE</h3>
                        <strong class="price">13.990.000₫</strong>
                        <p class="item-gift">Quà <b>4.300.000₫</b></p>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="244385" data-pos="6">
                    <a href="/laptop/dell-g3-15-i7-p89f002bwh" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Dell Gaming G3 15 i7 10750H/16GB/512GB/6GB GTX1660Ti/120Hz/Win10 (P89F002BWH)" data-id="244385" data-price="31290000.0" data-brand="Dell" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/dell-g3-15-i7-p89f002bwh-16-600x600.jpg"/>" class=" lazyloaded" alt="Dell Gaming G3 15 i7 10750H (P89F002BWH)" width="210" height="210" src="<c:url value="/assets/web/assets/images/dell-g3-15-i7-p89f002bwh-16-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label-Intel-Gen10.png"/>" width="40" height="40" class="lbliconimg lbliconimg_44 tgdd ls-is-cached lazyloaded">
                        </div>
                        <h3>Dell Gaming G3 15 i7 10750H (P89F002BWH)</h3>
                        <div class="item-compare">
                            <span>RAM 16 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">31.990.000₫</p>
                        </div>
                        <strong class="price">31.290.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="236022" data-pos="7">
                    <a href="/laptop/asus-uf-gaming-fx506lh-i5-hn002t" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Asus TUF Gaming FX506LH i5 10300H/8GB/512GB/144Hz/4GB GTX1650/Win10 (HN002T)" data-id="236022" data-price="21490000.0" data-brand="Asus" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/asus-uf-gaming-fx506lh-i5-hn002t-15-600x600.jpg"/>" class=" lazyloaded" alt="Asus TUF Gaming FX506LH i5 10300H (HN002T)" width="210" height="210" src="<c:url value="/assets/web/assets/images/asus-uf-gaming-fx506lh-i5-hn002t-15-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/Label-Intel-Gen10.png"/>" width="40" height="40" class="lbliconimg lbliconimg_44 tgdd ls-is-cached lazyloaded">
                        </div>
                        <h3>Asus TUF Gaming FX506LH i5 10300H (HN002T)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">21.990.000₫</p>
                        </div>
                        <strong class="price">21.490.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="242530" data-pos="8">
                    <a href="/laptop/lenovo-ideapad-5-15itl05-i5-82fg00p5vn" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Lenovo Ideapad 5 15ITL05 i5 1135G7/8GB/512GB/2GB MX450/Win10 (82FG00P5VN)" data-id="242530" data-price="20590000.0" data-brand="Lenovo" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/lenovo-ideapad-5-15itl05-i5-82fg00p5vn-600x600.jpg"/>" class=" lazyloaded" alt="Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG00P5VN)" width="210" height="210" src="<c:url value="/assets/web/assets/images/lenovo-ideapad-5-15itl05-i5-82fg00p5vn-600x600.jpg"/>">
                            <img src="<c:url value="/assets/web/assets/images/11th-gen-core-i5-processors-badge-rwd.png.rendition.intel.web.550.550.jpg"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_44 tgdd">
                        </div>
                        <h3>Lenovo Ideapad 5 15ITL05 i5 1135G7 (82FG00P5VN)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 512 GB</span>
                        </div>
                        <div class="box-p">
                            <p class="price-old black">20.990.000₫</p>
                        </div>
                        <strong class="price">20.590.000₫</strong>
                        <p class="item-gift">Quà <b>400.000₫</b></p>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="231253" data-pos="9">
                    <a href="/laptop/apple-macbook-pro-2020-m1-myd82saa" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Laptop Apple MacBook Pro M1 2020 8GB/256GB/Space Grey (MYD82SA/A)" data-id="231253" data-price="33190000.0" data-brand="MacBook" data-cate="Laptop" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/apple-macbook-pro-2020-m1-myd82saa-274121-084107-600x600.jpg"/>" class="lazyload" alt="MacBook Pro M1 2020 Space Grey (MYD82SA/A)" width="210" height="210">
                        </div>
                        <h3>MacBook Pro M1 2020 Space Grey (MYD82SA/A)</h3>
                        <div class="item-compare">
                            <span>RAM 8 GB</span>
                            <span>SSD 256 GB</span>
                        </div>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">34.990.000₫</p>
                            <span class="percent">-5%</span>
                        </div>
                        <strong class="price">33.190.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="233257" data-pos="10">
                    <a href="/may-tinh-bang/huawei-matepad-t10s" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Máy tính bảng Huawei MatePad T10s (Nền tảng Huawei Mobile Service)" data-id="233257" data-price="5140000.0" data-brand="Huawei" data-cate="Máy tính bảng" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/huawei-t10s-600x600-600x600.jpg"/>" class="lazyload" alt="Huawei MatePad T10s (Nền tảng Huawei Mobile Service)" width="210" height="210">
                            <img src="<c:url value="/assets/web/assets/images/Label_01-05.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_522 tgdd">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Huawei MatePad T10s (Nền tảng Huawei Mobile Service)</h3>
                        <div class="box-p">
                            <p class="price-old black">5.490.000₫</p>
                            <span class="percent">-6%</span>
                        </div>
                        <strong class="price">5.140.000₫</strong>
                        <p class="item-gift">Quà <b>300.000₫</b></p>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">22</p>
                        </div>


                    </a>

                </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
        </div>
    </div>

    <!-- End -->
    <!-- Phụ kiện -->
    <div class="box-common" data-html-id="3465">
        <div class="box-common__top clearfix">
            <h2 class="box-common__title">PHỤ KIỆN NỔI BẬT NHẤT</h2>

            <div class="box-common__link" data-size="5">
                <a href="https://www.thegioididong.com/sac-dtdd" data-index="1">
                    Sạc dự phòng
                </a>
                <a href="https://www.thegioididong.com/sac-cap" data-index="2">
                    Cáp sạc
                </a>
                <a href="https://www.thegioididong.com/tai-nghe" data-index="3">
                    Tai nghe
                </a>
                <a href="https://www.thegioididong.com/loa-laptop" data-index="4">
                    Loa
                </a>
                <a href="https://www.thegioididong.com/op-lung-flipcover" data-index="5">
                    Ốp lưng
                </a>
                <a class="readmore-btn accessory" href="/phu-kien">Xem tất cả <b>2.722</b> Phụ kiện</a>
            </div>
        </div>
        <div class="box-common__main">
            <div class="listproduct slider-home owl-carousel owl-loaded owl-drag" data-size="10">










                <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 2048px;"><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="236025" data-pos="1">
                    <a href="/tai-nghe/tai-nghe-bluetooth-airpods-2-wireless-charge-mrxj2" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2" data-id="236025" data-price="4751000.0" data-brand="Apple" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/airpods-2-wireless-charge-apple-mrxj2-ava-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2</h3>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">5.590.000₫</p>
                            <span class="percent">-15%</span>
                        </div>
                        <strong class="price">4.751.000₫</strong>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="236026" data-pos="2">
                    <a href="/tai-nghe/tai-nghe-bluetooth-airpods-pro-apple-mwp22" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22" data-id="236026" data-price="5635000.0" data-brand="Apple" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/airpods-pro-wireless-charge-apple-mwp22-ava-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Tai nghe Bluetooth AirPods Pro Wireless Charge Apple MWP22</h3>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">6.790.000₫</p>
                            <span class="percent">-17%</span>
                        </div>
                        <strong class="price">5.635.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                            </p>
                            <p class="item-rating-total">7</p>
                        </div>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="233618" data-pos="3">
                    <a href="/tai-nghe/tai-nghe-bluetooth-true-wireless-galaxy-buds-pro" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth True Wireless Galaxy Buds Pro" data-id="233618" data-price="3990000.0" data-brand="Samsung" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/tai-nghe-bluetooth-true-wireless-galaxy-buds-pro-ava-1-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Galaxy Buds Pro" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Tai nghe Bluetooth True Wireless Galaxy Buds Pro</h3>
                        <div class="box-p">
                            <p class="price-old black">4.990.000₫</p>
                            <span class="percent">-20%</span>
                        </div>
                        <strong class="price">3.990.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">23</p>
                        </div>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="237679" data-pos="4">
                    <a href="/sac-dtdd/hydrus-pj-jp196" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Pin sạc dự phòng Polymer 10.000 mAh Hydrus PJ JP196" data-id="237679" data-price="294000.0" data-brand="Hydrus" data-cate="Sạc dự phòng" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/hydrus-pj-jp196-ava-600x600.jpg"/>" class="lazyload" alt="Hydrus PJ JP196" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Pin sạc dự phòng Polymer 10.000 mAh Hydrus PJ JP196</h3>
                        <p class="item-txt-online">Chỉ bán online</p>
                        <div class="box-p">
                            <p class="price-old black">490.000₫</p>
                            <span class="percent">-40%</span>
                        </div>
                        <strong class="price">294.000₫</strong>


                    </a>

                </div></div><div class="owl-item active" style="width: 204.8px;"><div class="item" data-id="226142" data-pos="5">
                    <a href="/sac-dtdd/sac-du-phong-polymer-10000mah-qc30-xmobile-p68d" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Xmobile P68D" data-id="226142" data-price="420000.0" data-brand="Xmobile" data-cate="Sạc dự phòng" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/sac-du-phong-polymer-10000mah-qc30-xmobile-p68d-avatar-1-600x600.jpg"/>" class="lazyload" alt="Xmobile P68D" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 Xmobile P68D</h3>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">700.000₫</p>
                            <span class="percent">-40%</span>
                        </div>
                        <strong class="price">420.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">12</p>
                        </div>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="174748" data-pos="6">
                    <a href="/sac-dtdd/sac-du-phong-polymer-10000mah-qc-3-evalu-pa-f1-air" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Pin sạc dự phòng Polymer 10.000 mAh Type C QC3.0 eValu PA F1 Air" data-id="174748" data-price="360000.0" data-brand="eValu" data-cate="Sạc dự phòng" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/sac-du-phong-polymer-10000mah-qc-3-evalu-pa-f1-air-avatar-1-600x600.jpg"/>" class="lazyload" alt="eValu PA F1 Air" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Pin sạc dự phòng Polymer 10.000 mAh Type C QC3.0 eValu PA F1 Air</h3>
                        <p class="item-txt-online">Online giá rẻ</p>
                        <div class="box-p">
                            <p class="price-old black">600.000₫</p>
                            <span class="percent">-40%</span>
                        </div>
                        <strong class="price">360.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">63</p>
                        </div>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="238028" data-pos="7">
                    <a href="/tai-nghe/bluetooth-true-wireless-hydrus-ts12bc" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth True Wireless Hydrus TS12BC" data-id="238028" data-price="275000.0" data-brand="Hydrus" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/bluetooth-true-wireless-hydrus-ts12bc-ava-2-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Hydrus TS12BC" width="210" height="210">
                        </div>
                        <p class="result-label temp1"><img width="20" height="20" class="lazyload" alt="TRỢ GIÁ MÙA DỊCH" data-src="<c:url value="/assets/web/assets/images/icon1-50x50.png"/>"><span>TRỢ GIÁ MÙA DỊCH</span></p>        <h3>Tai nghe Bluetooth True Wireless Hydrus TS12BC</h3>
                        <p class="item-txt-online">Chỉ bán online</p>
                        <div class="box-p">
                            <p class="price-old black">550.000₫</p>
                            <span class="percent">-50%</span>
                        </div>
                        <strong class="price">275.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">17</p>
                        </div>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="230264" data-pos="8">
                    <a href="/tai-nghe/tai-nghe-bluetooth-true-wireless-mozard-air-3-den" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Tai nghe Bluetooth True Wireless Mozard Air 3 Đen" data-id="230264" data-price="640000.0" data-brand="Mozard" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/tai-nghe-bluetooth-true-wireless-mozard-air-3-den-avatar-1-1-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Mozard Air 3" width="210" height="210">
                        </div>
                        <h3>Tai nghe Bluetooth True Wireless Mozard Air 3 Đen</h3>
                        <div class="box-p">
                            <p class="price-old black">800.000₫</p>
                            <span class="percent">-20%</span>
                        </div>
                        <strong class="price">640.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-half"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">35</p>
                        </div>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="230363" data-pos="9">
                    <a href="/tai-nghe/tai-nghe-bluetooth-true-wireless-mozard-ts13" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Tai nghe Bluetooth True Wireless Mozard TS13" data-id="230363" data-price="350000.0" data-brand="Mozard" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/tai-nghe-bluetooth-true-wireless-mozard-ts13-avatar-1-1-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Mozard TS13" width="210" height="210">
                        </div>
                        <h3>Tai nghe Bluetooth True Wireless Mozard TS13</h3>
                        <div class="box-p">
                            <p class="price-old black">650.000₫</p>
                            <span class="percent">-46%</span>
                        </div>
                        <strong class="price">350.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">114</p>
                        </div>


                    </a>

                </div></div><div class="owl-item" style="width: 204.8px;"><div class="item" data-id="231148" data-pos="10">
                    <a href="/tai-nghe/bluetooth-true-wireless-mozard-dt920-den" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="False" data-name="Tai nghe Bluetooth True Wireless Mozard DT920 Đen" data-id="231148" data-price="760000.0" data-brand="Mozard" data-cate="Tai nghe" data-box="BoxHome">
                        <div class="item-label">
                        </div>
                        <div class="item-img">
                            <img data-src="<c:url value="/assets/web/assets/images/bluetooth-true-wireless-mozard-dt920-den-ava-600x600.jpg"/>" class="lazyload" alt="Tai nghe Bluetooth True Wireless Mozard DT920" width="210" height="210">
                        </div>
                        <h3>Tai nghe Bluetooth True Wireless Mozard DT920 Đen</h3>
                        <div class="box-p">
                            <p class="price-old black">950.000₫</p>
                            <span class="percent">-20%</span>
                        </div>
                        <strong class="price">760.000₫</strong>
                        <div class="item-rating">
                            <p>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star"></i>
                                <i class="icon-star-dark"></i>
                            </p>
                            <p class="item-rating-total">56</p>
                        </div>


                    </a>

                </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
        </div>
    </div>

    <!-- End -->
    <!-- Đồng hồ thông minh, đồng hồ nam, đồng hồ nữ, định vị trẻ em -->
    <div class="dongho clearfix" style="background-color:#193D51">
        <div class="dongho__left">
            <a aria-label="slide" data-cate="0" data-place="1576" href="#" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=42447&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="lazyload" data-src="<c:url value="/assets/web/assets/images/330x430-330x430-1.png"/>" alt="Block trang chủ đồng hồ"></a>                    </div>
        <div class="dongho__right">
            <ul class="dongho-tab">
                <li class="item act" data-cate-id="7077" data-html-id="3482">Đồng hồ thông minh</li>
                <li class="item" data-cate-id="7264" data-prop-id="134705" data-html-id="3483">Đồng hồ thời trang Nam</li>
                <li class="item" data-cate-id="7264" data-prop-id="134706" data-html-id="3484">Đồng hồ thời trang Nữ</li>
                <li class="item" data-cate-id="7077" data-prop-id="147889" data-html-id="3485">Định vị trẻ em</li>
            </ul>
            <div class="dongho-show active relative">
                <div class="preloader">
                    <div class="loaderweb"></div>
                </div>
                <div class="dongho__content" data-cate-id="7077" data-html-id="3482">
                    <div class="listproduct slider-dongho owl-carousel owl-loaded owl-drag" data-size="8">








                        <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1560px;"><div class="owl-item active" style="width: 195px;"><div class="item" data-id="233260" data-pos="1">
                            <a href="/dong-ho-thong-minh/se-44mm-vien-nhom-day-cao-su-hong" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Apple Watch SE 44mm viền nhôm dây cao su hồng" data-id="233260" data-price="7691000.0" data-brand="Apple" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/se-44mm-vien-nhom-day-cao-su-hong-01-600x600.jpg"/>" class=" lazyloaded" alt="Apple Watch SE 44mm viền nhôm dây cao su" width="210" height="210" src="<c:url value="/assets/web/assets/images/se-44mm-vien-nhom-day-cao-su-hong-01-600x600.jpg"/>">
                                </div>
                                <h3>Apple Watch SE 44mm viền nhôm dây cao su hồng</h3>
                                <div class="item-compare">
                                    <span>Có nghe gọi</span>
                                </div>
                                <p class="item-txt-online">Online giá rẻ</p>
                                <div class="box-p">
                                    <p class="price-old black">9.990.000₫</p>
                                    <span class="percent">-23%</span>
                                </div>
                                <strong class="price">7.691.000₫</strong>


                            </a>

                        </div></div><div class="owl-item active" style="width: 195px;"><div class="item" data-id="245579" data-pos="2">
                            <a href="/dong-ho-thong-minh/amazfit-neo" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Đồng hồ thông minh Amazfit Neo" data-id="245579" data-price="690000.0" data-brand="Huami Amazfit" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/amazfit-neoava1-600x600.jpg"/>" class=" lazyloaded" alt="Amazfit Neo" width="210" height="210" src="<c:url value="/assets/web/assets/images/amazfit-neoava1-600x600.jpg"/>">
                                </div>
                                <h3>Đồng hồ thông minh Amazfit Neo</h3>
                                <div class="box-p">
                                    <p class="price-old black">749.000₫</p>
                                    <span class="percent">-7%</span>
                                </div>
                                <strong class="price">690.000₫</strong>


                            </a>

                        </div></div><div class="owl-item active" style="width: 195px;"><div class="item" data-id="231682" data-pos="3">
                            <a href="/dong-ho-thong-minh/beu-b2-den" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Đồng hồ thông minh BeU B2 Đen" data-id="231682" data-price="552000.0" data-brand="BeU" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/beu-b2-den-thumb-600x600.jpg"/>" class=" lazyloaded" alt="BeU B2" width="210" height="210" src="<c:url value="/assets/web/assets/images/beu-b2-den-thumb-600x600.jpg"/>">
                                </div>
                                <h3>Đồng hồ thông minh BeU B2 Đen</h3>
                                <div class="box-p">
                                    <p class="price-old black">690.000₫</p>
                                    <span class="percent">-20%</span>
                                </div>
                                <strong class="price">552.000₫</strong>
                                <div class="item-rating">
                                    <p>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-dark"></i>
                                        <i class="icon-star-dark"></i>
                                    </p>
                                    <p class="item-rating-total">14</p>
                                </div>


                            </a>

                        </div></div><div class="owl-item active" style="width: 195px;"><div class="item" data-id="230634" data-pos="4">
                            <a href="/dong-ho-thong-minh/samsung-galaxy-watch-3-41mm-bac" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Samsung Galaxy Watch 3 41mm viền thép bạc dây da" data-id="230634" data-price="5490000.0" data-brand="Samsung" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/samsung-galaxy-watch-3-41mm-bacava-600x600.jpg"/>" class=" lazyloaded" alt="Samsung Galaxy Watch 3 41mm viền thép dây da" width="210" height="210" src="<c:url value="/assets/web/assets/images/samsung-galaxy-watch-3-41mm-bacava-600x600.jpg"/>">
                                </div>
                                <h3>Samsung Galaxy Watch 3 41mm viền thép bạc dây da</h3>
                                <div class="item-compare">
                                    <span>Đo nồng độ oxy</span>
                                    <span>Có nghe gọi</span>
                                </div>
                                <div class="box-p">
                                    <p class="price-old black">9.490.000₫</p>
                                    <span class="percent">-42%</span>
                                </div>
                                <strong class="price">5.490.000₫</strong>
                                <div class="item-rating">
                                    <p>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-dark"></i>
                                        <i class="icon-star-dark"></i>
                                    </p>
                                    <p class="item-rating-total">12</p>
                                </div>


                            </a>

                        </div></div><div class="owl-item" style="width: 195px;"><div class="item" data-id="236733" data-pos="5">
                            <a href="/dong-ho-thong-minh/mi-band-6" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Vòng đeo tay thông minh Mi Band 6" data-id="236733" data-price="990000.0" data-brand="Xiaomi" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                    <span class="ln-banchay">Bán chạy</span>
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/mi-band-6-thumb-fix-600x600.jpg"/>" class=" lazyloaded" alt="Xiaomi Mi Band 6" width="210" height="210" src="<c:url value="/assets/web/assets/images/mi-band-6-thumb-fix-600x600.jpg"/>">
                                    <img src="<c:url value="/assets/web/assets/images/image-12.png"/>" width="40" height="40" class="lbliconimg lbliconimg_7077 tgdd ls-is-cached lazyloaded">
                                </div>
                                <h3>Vòng đeo tay thông minh Mi Band 6</h3>
                                <div class="item-compare">
                                    <span>Đo nồng độ oxy</span>
                                </div>
                                <div class="box-p">
                                    <p class="price-old black">1.290.000₫</p>
                                    <span class="percent">-23%</span>
                                </div>
                                <strong class="price">990.000₫</strong>
                                <div class="item-rating">
                                    <p>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-dark"></i>
                                    </p>
                                    <p class="item-rating-total">15</p>
                                </div>


                            </a>

                        </div></div><div class="owl-item" style="width: 195px;"><div class="item" data-id="234916" data-pos="6">
                            <a href="/dong-ho-thong-minh/s6-40mm-vien-nhom-day-cao-su-xanh" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Apple Watch S6 40mm viền nhôm dây cao su xanh" data-id="234916" data-price="9491000.0" data-brand="Apple" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/s6-40mm-vien-nhom-day-cao-su-xanh-01-600x600.jpg"/>" class=" lazyloaded" alt="Apple Watch S6 40mm viền nhôm dây cao su xanh" width="210" height="210" src="<c:url value="/assets/web/assets/images/s6-40mm-vien-nhom-day-cao-su-xanh-01-600x600.jpg"/>">
                                </div>
                                <h3>Apple Watch S6 40mm viền nhôm dây cao su xanh</h3>
                                <div class="item-compare">
                                    <span>Đo nồng độ oxy</span>
                                    <span>Có nghe gọi</span>
                                </div>
                                <p class="item-txt-online">Online giá rẻ</p>
                                <div class="box-p">
                                    <p class="price-old black">11.990.000₫</p>
                                    <span class="percent">-20%</span>
                                </div>
                                <strong class="price">9.491.000₫</strong>


                            </a>

                        </div></div><div class="owl-item" style="width: 195px;"><div class="item" data-id="227985" data-pos="7">
                            <a href="/dong-ho-thong-minh/huawei-watch-fit-day-silicone" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Huawei Watch Fit dây silicone" data-id="227985" data-price="1990000.0" data-brand="Huawei" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/huawei-watch-fit-day-silicone-thumb-600x600.jpg"/>" class="lazyload" alt="Huawei Watch Fit dây silicone" width="210" height="210">
                                </div>
                                <h3>Huawei Watch Fit dây silicone</h3>
                                <div class="item-compare">
                                    <span>Đo nồng độ oxy</span>
                                </div>
                                <div class="box-p">
                                    <p class="price-old black">3.290.000₫</p>
                                    <span class="percent">-39%</span>
                                </div>
                                <strong class="price">1.990.000₫</strong>
                                <div class="item-rating">
                                    <p>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star"></i>
                                        <i class="icon-star-dark"></i>
                                    </p>
                                    <p class="item-rating-total">21</p>
                                </div>


                            </a>

                        </div></div><div class="owl-item" style="width: 195px;"><div class="item" data-id="218428" data-pos="8">
                            <a href="/dong-ho-thong-minh/garmin-forerunner-45-day-silicone" class=" main-contain" data-s="Nomal" data-site="1" data-pro="3" data-cache="True" data-name="Đồng hồ thông minh Garmin Forerunner 45 dây silicone đỏ" data-id="218428" data-price="4072000.0" data-brand="Garmin" data-cate="Đồng hồ thông minh" data-box="BoxHome">
                                <div class="item-label">
                                </div>
                                <div class="item-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/garmin-forerunner-45-day-silicone-01-600x600.jpg"/>" class="lazyload" alt="Garmin Forerunner 45 dây silicone" width="210" height="210">
                                    <img src="<c:url value="/assets/web/assets/images/Label_01_2nd-09-111.png"/>" width="40" height="40" class="lazyload lbliconimg lbliconimg_7077 tgdd">
                                </div>
                                <h3>Đồng hồ thông minh Garmin Forerunner 45 dây silicone đỏ</h3>
                                <div class="box-p">
                                    <p class="price-old black">5.090.000₫</p>
                                    <span class="percent">-20%</span>
                                </div>
                                <strong class="price">4.072.000₫</strong>


                            </a>

                        </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
                    <a href="/dong-ho-thong-minh" class="readmore-arrow smart-watch"><span>Xem tất cả <b>140</b> Đồng hồ thông minh</span></a>
                </div>

            </div>
        </div>
    </div>

    <!-- End -->
    <div class="trademark">
        <h4 class="title-layout">CHUYÊN TRANG THƯƠNG HIỆU</h4>
        <div class="trademark-slider owl-carousel owl-loaded owl-drag" data-size="3">
            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1044px;"><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1550" href="/samsung" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=43939&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/samsung-390-210-390x210-2.png"/>" alt="SS" src="<c:url value="/assets/web/assets/images/samsung-390-210-390x210-2.png"/>"></a></div><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1550" href="/apple?itm_source=homepage&amp;itm_medium=SIS_banner&amp;itm_campaign=internal_tracking&amp;itm_content=all_1550" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=43640&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/DT-390x210-2.png"/>" alt="iphone" src="<c:url value="/assets/web/assets/images/DT-390x210-2.png"/>" ></a></div><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1550" href="/lenovo" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=45156&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class="owl-lazy lazyloaded" data-src="<c:url value="/assets/web/assets/images/Sticky-chung1Laptop-390x210-1.png"/>" alt="Laptop Lenovo" src="<c:url value="/assets/web/assets/images/Sticky-chung1Laptop-390x210-1.png"/>"></a></div></div></div><div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
    </div>
    <div class="product-news">
        <h4 class="title-layout">SẢN PHẨM MỚI</h4>
        <div class="product-news-slider owl-carousel owl-loaded owl-drag" data-size="4">
            <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1392px;"><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1552" href="/dtdd/oppo-reno6?itm_source=homepage&amp;itm_medium=new_product_banner&amp;itm_campaign=internal_tracking&amp;itm_content=all_1552" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=44770&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class=" lazyloaded" data-src="<c:url value="/assets/web/assets/images/oppo-780x420.jpg"/>" alt="Oppo Reno6 Z" src="<c:url value="/assets/web/assets/images/oppo-780x420.jpg"/>"></a></div><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1552" href="/may-tinh-de-ban/mac-mini-m1-mgnr3saa?itm_source=homepage&amp;itm_medium=new_product_banner&amp;itm_campaign=internal_tracking&amp;itm_content=all_1552" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=42889&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class=" lazyloaded" data-src="<c:url value="/assets/web/assets/images/macmini-780x420.jpg"/>" alt="Mac Mini" src="<c:url value="/assets/web/assets/images/macmini-780x420.jpg"/>"></a></div><div class="owl-item active" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1552" href="/tai-nghe/bluetooth-tws-oppo-enco-buds-eti81?src=osp?itm_source=homepage&amp;itm_medium=new_product_banner&amp;itm_campaign=internal_tracking&amp;itm_content=all_1552" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=44574&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class=" lazyloaded" data-src="<c:url value="/assets/web/assets/images/SPmoi5-780x420.jpg"/>" alt="Tai nghe" src="<c:url value="/assets/web/assets/images/SPmoi5-780x420.jpg"/>"></a></div><div class="owl-item" style="width: 338px; margin-right: 10px;"><a aria-label="slide" data-cate="0" data-place="1552" href="/sac-dtdd-ava-plus?itm_source=homepage&amp;itm_medium=new_product_banner&amp;itm_campaign=internal_tracking&amp;itm_content=all_1552" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=44836&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img loading="lazy" class=" lazyloading" data-src="<c:url value="/assets/web/assets/images/SPmoi4-780x420.jpg"/>" alt="Pin sac AVA" src="<c:url value="/assets/web/assets/images/SPmoi4-780x420.jpg"/>"></a></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
    </div>

    <div class="application">
        <div class="col1">
            <div class="ttl-main">
                <h4 class="title-layout">24H CÔNG NGHỆ</h4>
                <a href="/tin-tuc" class="readmore-txt blue">Xem thêm</a>
            </div>
            <div class="col1__ct" data-size="6">
                <a href="/tin-tuc/oppo-reno6-5g-so-voi-reno6-z-5g-1371959" class="col1-big">
                    <div class="col1-big-img">
                        <img data-src="<c:url value="/assets/web/assets/images/cover2_1280x720-500x500.jpg"/>" class=" ls-is-cached lazyloaded" alt="Chênh nhau 3.5 triệu, đây là những điểm cộng trên OPPO Reno6 5G so với Reno6 Z 5G khiến người dùng phải mạnh tay chi thêm" src="<c:url value="/assets/web/assets/images/cover2_1280x720-500x500.jpg"/>">
                    </div>
                    <p class="col1-title">Chênh nhau 3.5 triệu, đây là những điểm cộng trên OPPO Reno6 5G so với Reno6 Z 5G khiến người dùng phải mạnh tay chi thêm</p>
                    <p class="col1-hour">10 phút trước</p>
                </a>
                <div class="col1-simple">
                    <a href="/tin-tuc/samsung-cung-dang-phat-trien-mot-chiec-tablet-voi-man-hinh-deo-1372240" class="spl-item">
                        <div class="spl-item__img">
                            <img data-src="<c:url value="/assets/web/assets/images/thumb_1280x720-200x200.jpg"/>" class=" lazyloaded" alt="Không chỉ smartphone màn hình gập mà Samsung cũng đang phát triển một chiếc tablet với màn hình uốn dẻo" src="<c:url value="/assets/web/assets/images/thumb_1280x720-200x200.jpg"/>">
                        </div>
                        <div class="spl-item__content">
                            <p class="spl-item-title">Không chỉ smartphone màn hình gập mà Samsung cũng đang phát triển một chiếc tablet với màn hình uốn dẻo</p>
                            <p class="spl-item-hour">36 phút trước</p>
                        </div>
                    </a>
                    <a href="/tin-tuc/dien-thoai-xiaomi-mi-11-5g-tro-gia-het-minh-den-5-trieu-dong-1372030" class="spl-item">
                        <div class="spl-item__img">
                            <img data-src="<c:url value="/assets/web/assets/images/mi115g-1_1280x720-200x200.jpg"/>" class=" lazyloaded" alt="Đồng hành mùa dịch, điện thoại Xiaomi Mi 11 5G trợ giá hết mình đến 5 triệu đồng, mức giá siêu tiết kiệm khó lòng mà ngó lơ" src="<c:url value="/assets/web/assets/images/mi115g-1_1280x720-200x200.jpg"/>">
                        </div>
                        <div class="spl-item__content">
                            <p class="spl-item-title">Đồng hành mùa dịch, điện thoại Xiaomi Mi 11 5G trợ giá hết mình đến 5 triệu đồng, mức giá siêu tiết kiệm khó lòng mà ngó lơ</p>
                            <p class="spl-item-hour">1 giờ trước</p>
                        </div>
                    </a>
                    <a href="/tin-tuc/ky-vong-xiaomi-redmi-k50-pro-1372158" class="spl-item">
                        <div class="spl-item__img">
                            <img data-src="<c:url value="/assets/web/assets/images/thum_800x450-200x200.jpg"/>" class=" lazyloaded" alt="Kỳ vọng Xiaomi Redmi K50 Pro: Thiết kế concept Gaming Phone tuyệt đẹp, camera 108 MP cùng cấu hình Snapdragon 895 mạnh mẽ" src="<c:url value="/assets/web/assets/images/thum_800x450-200x200.jpg"/>">
                        </div>
                        <div class="spl-item__content">
                            <p class="spl-item-title">Kỳ vọng Xiaomi Redmi K50 Pro: Thiết kế concept Gaming Phone tuyệt đẹp, camera 108 MP cùng cấu hình Snapdragon 895 mạnh mẽ</p>
                            <p class="spl-item-hour">1 giờ trước</p>
                        </div>
                    </a>
                    <a href="/tin-tuc/thiet-bi-deo-tay-thong-minh-vua-so-huu-tinh-nang-do-spo2-1372033" class="spl-item">
                        <div class="spl-item__img">
                            <img data-src="<c:url value="/assets/web/assets/images/amazfit_800x450-200x200.jpg"/>" class=" lazyloaded" alt="Top thiết bị đeo tay thông minh vừa sở hữu tính năng đo SpO2 hữu ích, vừa có giá tốt tháng 8 này, bạn đã biết chưa?" src="<c:url value="/assets/web/assets/images/amazfit_800x450-200x200.jpg"/>">
                        </div>
                        <div class="spl-item__content">
                            <p class="spl-item-title">Top thiết bị đeo tay thông minh vừa sở hữu tính năng đo SpO2 hữu ích, vừa có giá tốt tháng 8 này, bạn đã biết chưa?</p>
                            <p class="spl-item-hour">2 giờ trước</p>
                        </div>
                    </a>
                    <a href="/tin-tuc/xiaomi-redmi-k40g-co-gi-moi-1371767" class="spl-item">
                        <div class="spl-item__img">
                            <img data-src="<c:url value="/assets/web/assets/images/avatar_800x450-200x200.jpg"/>" class=" lazyloaded" alt="Nghe Đồn Là: Xiaomi Redmi K40G có hiệu năng mạnh mẽ với Snapdragon 870, màn hình 120 Hz và viên pin 5.065 mAh (liên tục cập nhật)" src="<c:url value="/assets/web/assets/images/avatar_800x450-200x200.jpg"/>">
                        </div>
                        <div class="spl-item__content">
                            <p class="spl-item-title">Nghe Đồn Là: Xiaomi Redmi K40G có hiệu năng mạnh mẽ với Snapdragon 870, màn hình 120 Hz và viên pin 5.065 mAh (liên tục cập nhật)</p>
                            <p class="spl-item-hour">3 giờ trước</p>
                        </div>
                    </a>
                </div>
            </div>

        </div>
        <div class="col2">

            <div class="ttl-main">
                <h4 class="title-layout">GAME, ỨNG DỤNG</h4>
                <a href="/game-app" class="readmore-txt blue">Xem thêm</a>
            </div>
            <div class="col2__ct">
                <div class="game game-slider owl-carousel owl-loaded owl-drag" data-size="4">




                    <div class="owl-stage-outer"><div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 1352px;"><div class="owl-item active" style="width: 337.906px;"><div class="game__item">
                        <a href="/game-app/subway-surfers-sieu-quay-duong-tau-219957">
                            <img data-src="<c:url value="/assets/web/assets/images/Untitled-1-600x360-6.jpg"/>" class="owl-lazy ls-is-cached lazyloaded" alt="Subway Surfers - Siêu quậy đường tàu" src="<c:url value="/assets/web/assets/images/Untitled-1-600x360-6.jpg"/>">
                            <div class="game-box-wrap">
                                <div class="game-box-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/Untitled-5-200x200.jpg"/>" class="owl-lazy ls-is-cached lazyloaded" alt="Subway Surfers - Siêu quậy đường tàu" src="<c:url value="/assets/web/assets/images/Untitled-5-200x200.jpg"/>">
                                </div>
                                <div class="game-box-main">
                                    <h4 class="game-title">Subway Surfers - Siêu quậy đường tàu</h4>
                                    <div class="game-label">
                                        <span>Miễn phí</span>
                                        <p>Hành động</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="game-box">
                            <div class="game-box-list">
                                <a href="/game-app/top-12-game-nhe-cho-android-giai-tri-va-thu-gian-nhat-1358760">Top 12 game nhẹ cho Android giải trí và thư giãn nhất</a>
                                <a href="/game-app/tong-hop-game-giai-tri-hay-tren-dien-thoai-xa-stress-thu-gian-1349199">Tổng hợp game giải trí hay trên điện thoại xả stress, thư giãn</a>
                            </div>
                        </div>
                    </div></div><div class="owl-item" style="width: 337.906px;"><div class="game__item">
                        <a href="/game-app/goviet-ung-dung-dat-xe-giao-hang-nhanh-219960">
                            <img data-src="<c:url value="/assets/web/assets/images/banner-trangchu-taixe-600x360.jpg"/>" class="owl-lazy ls-is-cached lazyloaded" alt="GoViet - Ứng dụng đặt xe, giao hàng nhanh" src="<c:url value="/assets/web/assets/images/banner-trangchu-taixe-600x360.jpg"/>">
                            <div class="game-box-wrap">
                                <div class="game-box-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/image(14)-200x200.png"/>" class="owl-lazy ls-is-cached lazyloaded" alt="GoViet - Ứng dụng đặt xe, giao hàng nhanh" src="<c:url value="/assets/web/assets/images/image(14)-200x200.png"/>">
                                </div>
                                <div class="game-box-main">
                                    <h4 class="game-title">GoViet - Ứng dụng đặt xe, giao hàng nhanh</h4>
                                    <div class="game-label">
                                        <span>Miễn phí</span>
                                        <p>Du lịch &amp; Địa phương</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="game-box">
                            <div class="game-box-list">
                                <a href="/game-app/cach-chuyen-tai-khoan-goviet-sang-gojek-de-nhan-khuyen-mai-1-1276705">Cách chuyển tài khoản GoViet sang GoJek để nhận khuyến mãi 1 phần nước</a>
                                <a href="/game-app/huong-dan-dat-xe-dat-do-an-tren-ung-dung-goviet-1249016">Hướng dẫn đặt xe, đặt đồ ăn trên ứng dụng GoViet</a>
                            </div>
                        </div>
                    </div></div><div class="owl-item" style="width: 337.906px;"><div class="game__item">
                        <a href="/game-app/ea-sports-fifa-online-4-tua-game-bong-da-dinh-cao-221448">
                            <img data-src="<c:url value="/assets/web/assets/images/9-800x446.jpg"/>" class="owl-lazy ls-is-cached lazyloaded" alt="EA Sports FIFA Online 4 - Tựa game bóng đá đỉnh cao" src="<c:url value="/assets/web/assets/images/9-800x446.jpg"/>">
                            <div class="game-box-wrap">
                                <div class="game-box-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/download(1)-200x200.png"/>" class="owl-lazy ls-is-cached lazyloaded" alt="EA Sports FIFA Online 4 - Tựa game bóng đá đỉnh cao" src="<c:url value="/assets/web/assets/images/download(1)-200x200.png"/>">
                                </div>
                                <div class="game-box-main">
                                    <h4 class="game-title">EA Sports FIFA Online 4 - Tựa game bóng đá đỉnh cao</h4>
                                    <div class="game-label">
                                        <span>Miễn phí</span>
                                        <p>Thể thao</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="game-box">
                            <div class="game-box-list">
                                <a href="/game-app/ki-tu-dac-biet-fifa-dep-nhat-2021-ten-fifa-dep-nhat-1370465">Kí tự đặc biệt FIFA đẹp nhất 2021 | Tên FIFA đẹp nhất</a>
                                <a href="/game-app/penalty-la-gi-cac-tinh-huong-bi-thoi-phat-den-va-luat-da-1363663">Penalty là gì? Các tình huống bị thổi phạt đền và luật đá penalty</a>
                            </div>
                        </div>
                    </div></div><div class="owl-item" style="width: 337.906px;"><div class="game__item">
                        <a href="/game-app/nhaccuatui-mot-trong-nhung-ung-dung-nghe-nhac-mp3-hang-dau-219981">
                            <img data-src="<c:url value="/assets/web/assets/images/NCT-600x360.jpg"/>" class="lazyload owl-lazy" alt="NhacCuaTui: Một trong những ứng dụng nghe nhạc mp3 hàng đầu">
                            <div class="game-box-wrap">
                                <div class="game-box-img">
                                    <img data-src="<c:url value="/assets/web/assets/images/Nhacuatui-200x200.jpg"/>" class="lazyload owl-lazy" alt="NhacCuaTui: Một trong những ứng dụng nghe nhạc mp3 hàng đầu">
                                </div>
                                <div class="game-box-main">
                                    <h4 class="game-title">NhacCuaTui: Một trong những ứng dụng nghe nhạc mp3 hàng đầu</h4>
                                    <div class="game-label">
                                        <span>Miễn phí</span>
                                        <p>Giải trí</p>
                                    </div>
                                </div>
                            </div>
                        </a>
                        <div class="game-box">
                            <div class="game-box-list">
                                <a href="/game-app/top-15-bai-hat-ve-tet-trung-thu-hay-nhat-tet-doan-vien-them-1361951">Top 15 bài hát về Tết Trung Thu hay nhất | Tết Đoàn viên thêm rộn rã</a>
                                <a href="/game-app/top-10-trang-web-nghe-nhac-quoc-te-hay-nhat-2021-1364005">TOP 10 trang web nghe nhạc quốc tế hay nhất 2021</a>
                            </div>
                        </div>
                    </div></div></div></div><div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><span aria-label="Previous">‹</span></button><button type="button" role="presentation" class="owl-next"><span aria-label="Next">›</span></button></div><div class="owl-dots disabled"></div></div>
            </div>

        </div>
    </div>
</section>

<div class="preloader preall">
    <div class="loaderweb"></div>
</div>
<p id="gb-top-page" class="hide">↑</p>
<form id="form-zone-bhx">

    <input name="AntiforgeryFieldname" type="hidden" value="CfDJ8Lig4BBG4B1Igtan2bf4p0thrJf6IUZtwsa4F_Xi-3OnOPEnT8uzz_AINmNaGbXSU5fPD6U8h0PE33lxlD_3IgJNkx9a_p6WI-se9zBAd3uMzoUSX4XTSTVuB8IUVHNNwOvAyc5SWefeGVAcIvjb6qM">
    <div><input id="g-recaptcha-response_captcha_214039964" name="g-recaptcha-response" type="hidden"><style>.grecaptcha-badge {display: none!important;}</style></div>
</form>
<div id="dldingtext">Bạn vui lòng chờ trong giây lát...</div>


<div><div class="grecaptcha-badge" data-style="bottomright" style="width: 256px; height: 60px; position: fixed; visibility: hidden; display: block; transition: right 0.3s ease 0s; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;"><div class="grecaptcha-logo"></div><div class="grecaptcha-error"></div><textarea id="g-recaptcha-response-100000" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div><iframe style="display: none;"></iframe></div><div style="display: none; visibility: hidden;">
