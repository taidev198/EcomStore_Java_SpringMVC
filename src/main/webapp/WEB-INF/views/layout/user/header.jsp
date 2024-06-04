<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/2/24
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="banner-media" style="background-color: rgb(255, 242, 0);">
    <div class="media-slider" data-size="1">
        <div class="item visible" data-background-color="#fff200" data-order="1">
            <a aria-label="slide" data-cate="0" data-place="1612" href="/flashsale" onclick="jQuery.ajax({ url: 'https://www.thegioididong.com/bannertracking?bid=44896&amp;r='+ (new Date).getTime(), async: true, cache: false });"><img src="<c:url value="/assets/web/assets/images/1200-44-1200x44-4.png"/>" alt="An tâm ở nhà"></a>
        </div>
    </div>
    <style>
        .banner-media{
            background-color: #fff200;
        }
    </style>

</div>

<header class="header  " data-sub="0">
    <div class="header__top">
        <div>
            <a href="/" class="header__logo">
                <i class="icon-logo"></i>
            </a>


            <div class="bordercol"></div>
            <a href="javascript:void(0)" class="header__address" onclick="OpenLocation()">
                Xem giá, khuyến mãi tại
                <span data-province="3" data-district="0" data-ward="0">Hồ Chí Minh</span>
            </a>

            <form action="/tim-kiem" onsubmit="return suggestSearch(event);" class="header__search">
                <input id="skw" type="text" class="input-search" onkeyup="suggestSearch(event);" placeholder="Bạn tìm gì..." name="key" autocomplete="off" maxlength="100">
                <button type="submit">
                    <i class="icon-search"></i>
                </button>
                <div id="search-result" style="display: none;"></div>
            </form>
            <a href="/cart" class="header__cart menu-info">
                <i class="icon-cart"></i>
                <span>Giỏ hàng</span>
            </a>
            <a href="/lich-su-mua-hang" class="header__history">Lịch sử đơn hàng</a>
            <div class="bordercol"></div>
            <a style="padding: 0 !important;" href="javascript:void(0)" class="header__hot">
            </a>
            <div class="header__listtop">
                <div class="bordercol"></div>
                <div class="divitem">
                    <a href="/tin-tuc">24h<br>Công nghệ</a>
                </div>
                <div class="bordercol"></div>
                <div class="divitem">
                    <a href="/hoi-dap">Hỏi Đáp</a>
                </div>
                <div class="bordercol"></div>
                <div class="divitem">
                    <a href="/game-app">Game App</a>
                </div>
            </div>
        </div>
    </div>

    <div class="header__main">
        <div>
            <ul class="main-menu">
                <li>
                    <a href="/dtdd">
                        <i class="icon-dienthoai"></i>
                        <span>Điện thoại</span>
                    </a>
                </li>
                <li>
                    <a href="/laptop">
                        <i class="icon-laptop"></i>
                        <span>Laptop</span>
                    </a>
                </li>
                <li>
                    <a href="/may-tinh-bang">
                        <i class="icon-tablet"></i>
                        <span>Tablet</span>
                    </a>
                </li>
                <li class="phukien">
                    <a href="/phu-kien">
                        <i class="icon-phukien"></i>
                        <span>Phụ kiện</span>
                    </a>
                    <div class="navmwg accessories">
                        <div class="PKDD">
                            <strong>Phụ kiện di động</strong>
                            <a href="/sac-dtdd"><h3>Pin sạc dự phòng</h3></a>
                            <a href="/sac-cap"><h3>Sạc, cáp</h3></a>
                            <a href="/mieng-dan-man-hinh"><h3>Miếng dán màn hình</h3></a>
                            <a href="/op-lung-flipcover"><h3>Ốp lưng điện thoại</h3></a>
                            <a href="/op-lung-may-tinh-bang"><h3>Ốp lưng máy tính bảng</h3></a>
                            <a href="/gay-tu-suong"><h3>Gậy tự sướng</h3></a>
                            <a href="/gia-do-dien-thoai"><h3>Giá đỡ laptop, điện thoại</h3></a>
                            <a href="/de-moc-dien-thoai"><h3>Đế, móc điện thoại</h3></a>
                            <a href="/tui-chong-nuoc"><h3>Túi chống nước</h3></a>
                            <a href="/tui-dung-airpods"><h3>Túi đựng Airpods</h3></a>
                            <a href="/phu-kien-thong-minh"><h3>Phụ kiện iPad</h3></a>
                            <br><br>
                        </div>                                 <div class="PKLT">
                        <strong>Phụ kiện Laptop</strong>
                        <a href="/chuot-may-tinh"><h3>Chuột máy tính</h3></a>
                        <a href="/ban-phim"><h3>Bàn phím</h3></a>
                        <a href="/tui-chong-soc"><h3>Balo, túi chống sốc</h3></a>
                        <a href="/phan-mem"><h3>Phần mềm</h3></a>
                    </div>                                 <div class="PKCH">
                        <strong>
                            Thương hiệu hàng đầu
                            <a href="/phu-kien/chinh-hang" class="">Xem tất cả</a>
                        </strong>
                        <a href="/phu-kien/apple"><h3>Apple</h3></a>
                        <a href="/phu-kien/samsung"><h3>Samsung</h3></a>
                        <a href="/phu-kien/sony"><h3>Sony</h3></a>
                        <a href="/phu-kien/anker"><h3>Anker</h3></a>
                    </div>                                 <div class="TBAT">
                        <strong>Thiết bị âm thanh</strong>
                        <a href="/tai-nghe"><h3>Tai nghe</h3></a>
                        <a href="/loa-laptop"><h3>Loa</h3></a>
                        <div class="TBLT">
                            <strong>Thiết bị lưu trữ</strong>
                            <a href="/the-nho-dien-thoai"><h3>Thẻ nhớ</h3></a>
                            <a href="/usb"><h3>USB</h3></a>
                            <a href="/o-cung-di-dong"><h3>Ổ cứng di động</h3></a>
                        </div>
                    </div>                                 <div class="PKK">
                        <strong>Phụ kiện khác</strong>
                        <a href="/thiet-bi-mang"><h3>Thiết bị mạng</h3></a>
                        <a href="/camera-giam-sat"><h3>Camera giám sát, hành trình</h3></a>
                        <a href="/phu-kien-oto"><h3>Phụ kiện ô tô</h3></a>
                        <a href="/may-tinh-cam-tay"><h3>Máy tính cầm tay</h3></a>
                        <a href="/thiet-bi-thong-minh"><h3>TV Box, Bút trình chiếu</h3></a>
                        <a href="/quat-mini"><h3>Quạt mini</h3></a>
                        <a href="/pin"><h3>Pin tiểu, pin điện thoại</h3></a>
                    </div>                </div>
                </li>
                <li>
                    <a href="/dong-ho-thong-minh">
                        <i class="icon-dhthongminh"></i>
                        <span>Đồng hồ thông minh</span>
                    </a>
                </li>
                <li>
                    <a href="/dong-ho">
                        <i class="icon-dhthoitrang"></i>
                        <span>Đồng hồ thời trang</span>
                    </a>
                </li>
                <li class="pcmayin">
                    <a href="/pc-may-in">
                        <i class="icon-pcmayin"></i>
                        <span>PC, Máy in</span>
                    </a>
                    <div class="navmwg PC-mayin">
                        <a href="/may-in"><h3>Máy in</h3></a>
                        <a href="/muc-in"><h3>Mực in</h3></a>
                        <a href="/man-hinh-may-tinh"><h3>Màn hình máy tính</h3></a>
                        <a href="/may-tinh-de-ban"><h3>Máy tính để bàn</h3></a>
                    </div>
                </li>
                <li>
                    <a href="/may-doi-tra">
                        <span>Máy cũ giá rẻ</span>
                    </a>
                </li>
                <li>
                    <a href="/sim-so-dep">
                        <span>Sim, Thẻ cào</span>
                        <span class="item__label">Giảm 5%</span>
                    </a>
                </li>
                <li>
                    <a href="/tien-ich">
                        <span>Trả góp, điện nước</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</header>