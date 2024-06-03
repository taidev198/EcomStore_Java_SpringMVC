<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/2/24
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="<c:url value="/assets/user/css/bootstrap.css"/>" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="<c:url value="/assets/user/style.css"/>" rel="stylesheet"/>
    <!-- font awesome styles -->
    <link href="<c:url value="/assets/user/font-awesome/css/font-awesome.css"/>" rel="stylesheet">
    <!--[if IE 7]>
    <link href="<c:url value="/assets/user/font-awesome/css/font-awesome-ie7.min.css"/>" rel="stylesheet">
    <![endif]-->

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value="/assets/user/ico/favicon.ico"/>">
</head>
<body>
<!--
	Upper Header Section
-->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="topNav">
        <div class="container">
            <div class="alignR">
                <div class="pull-left socialNw">
                    <a href="#"><span class="icon-twitter"></span></a>
                    <a href="#"><span class="icon-facebook"></span></a>
                    <a href="#"><span class="icon-youtube"></span></a>
                    <a href="#"><span class="icon-tumblr"></span></a>
                </div>
                <a class="active" href="index.html"> <span class="icon-home"></span> Home</a>
                <a href="#"><span class="icon-user"></span> My Account</a>
                <a href="register.html"><span class="icon-edit"></span> Free Register </a>
                <a href="contact.html"><span class="icon-envelope"></span> Contact us</a>
                <a href="cart.html"><span class="icon-shopping-cart"></span> 2 Item(s) - <span class="badge badge-warning"> $448.42</span></a>
            </div>
        </div>
    </div>
</div>

<!--
Lower Header Section
-->
<div class="container">
    <div id="gototop"> </div>
    <header id="header">
        <div class="row">
            <div class="span4">
                <h1>
                    <a class="logo" href="index.html"><span>Twitter Bootstrap ecommerce template</span>
                        <img src="<c:url value="/assets/user/img/logo-bootstrap-shoping-cart.png"/>" alt="bootstrap sexy shop">
                    </a>
                </h1>
            </div>
            <div class="span4">
                <div class="offerNoteWrapper">
                    <h1 class="dotmark">
                        <i class="icon-cut"></i>
                        Twitter Bootstrap shopping cart HTML template is available @ $14
                    </h1>
                </div>
            </div>
            <div class="span4 alignR">
                <p><br> <strong> Support (24/7) :  0800 1234 678 </strong><br><br></p>
                <span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span>
                <span class="btn btn-warning btn-mini">$</span>
                <span class="btn btn-mini">&pound;</span>
                <span class="btn btn-mini">&euro;</span>
            </div>
        </div>
    </header>

    <!--
    Navigation Bar Section
    -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse">
                    <ul class="nav">
                        <li class="active"><a href="index.html">Home	</a></li>
                        <li class=""><a href="list-view.html">List View</a></li>
                        <li class=""><a href="grid-view.html">Grid View</a></li>
                        <li class=""><a href="three-col.html">Three Column</a></li>
                        <li class=""><a href="four-col.html">Four Column</a></li>
                        <li class=""><a href="general.html">General Content</a></li>
                    </ul>
                    <form action="#" class="navbar-search pull-left">
                        <input type="text" placeholder="Search" class="search-query span2">
                    </form>
                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Login <b class="caret"></b></a>
                            <div class="dropdown-menu">
                                <form class="form-horizontal loginFrm">
                                    <div class="control-group">
                                        <input type="text" class="span2" id="inputEmail" placeholder="Email">
                                    </div>
                                    <div class="control-group">
                                        <input type="password" class="span2" id="inputPassword" placeholder="Password">
                                    </div>
                                    <div class="control-group">
                                        <label class="checkbox">
                                            <input type="checkbox"> Remember me
                                        </label>
                                        <button type="submit" class="shopBtn btn-block">Sign in</button>
                                    </div>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--
    Body Section
    -->
    <div class="row">
        <div id="sidebar" class="span3">
            <div class="well well-small">
                <ul class="nav nav-list">
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Watches</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Fine Jewelry</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Fashion Jewelry</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Engagement & Wedding</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Men's Jewelry</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Vintage & Antique</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Diamonds </a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>Loose Beads</a></li>
                    <li><a href="products.html"><span class="icon-chevron-right"></span>See All Jewelry & Watches</a></li>
                    <li style="border:0"> &nbsp;</li>
                    <li> <a class="totalInCart" href="cart.html"><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">$448.42</span></strong></a></li>
                </ul>
            </div>

            <div class="well well-small alert alert-warning cntr">
                <h2>50% Discount</h2>
                <p>
                    only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
                </p>
            </div>
            <div class="well well-small" ><a href="#"><img src="<c:url value="/assets/user/img/paypal.jpg"/>" alt="payment method paypal"></a></div>

            <a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
            <br>
            <br>
            <ul class="nav nav-list promowrapper">
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG"/>" alt="bootstrap ecommerce templates">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
                <li style="border:0"> &nbsp;</li>
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="<c:url value="/assets/user/img/shopping-cart-template.PNG"/>" alt="shopping cart template">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
                <li style="border:0"> &nbsp;</li>
                <li>
                    <div class="thumbnail">
                        <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                        <img src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG"/>" alt="bootstrap template">
                        <div class="caption">
                            <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
                        </div>
                    </div>
                </li>
            </ul>

        </div>
        <div class="span9">
            <div class="well np">
                <div id="myCarousel" class="carousel slide homCar">
                    <div class="carousel-inner">
                        <div class="item">
                            <img style="width:100%" src="<c:url value="/assets/user/img/bootstrap_free-ecommerce.png"/>" alt="bootstrap ecommerce templates">
                            <div class="carousel-caption">
                                <h4>Bootstrap shopping cart</h4>
                                <p><span>Very clean simple to use</span></p>
                            </div>
                        </div>
                        <div class="item">
                            <img style="width:100%" src="<c:url value="/assets/user/img/carousel1.png"/>" alt="bootstrap ecommerce templates">
                            <div class="carousel-caption">
                                <h4>Bootstrap Ecommerce template</h4>
                                <p><span>Highly Google seo friendly</span></p>
                            </div>
                        </div>
                        <div class="item active">
                            <img style="width:100%" src="<c:url value="/assets/user/img/carousel3.png"/>" alt="bootstrap ecommerce templates">
                            <div class="carousel-caption">
                                <h4>Twitter Bootstrap cart</h4>
                                <p><span>Very easy to integrate and expand.</span></p>
                            </div>
                        </div>
                        <div class="item">
                            <img style="width:100%" src="<c:url value="/assets/user/img/bootstrap-ecommerce-templates.PNG"/>" alt="bootstrap templates">
                            <div class="carousel-caption">
                                <h4>Bootstrap templates integration</h4>
                                <p><span>Compitable to many more opensource cart</span></p>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                </div>
            </div>
            <!--
            New Products
            -->
            <div class="well well-small">
                <h3>New Products </h3>
                <hr class="soften"/>
                <div class="row-fluid">
                    <div id="newProductCar" class="carousel slide">
                        <div class="carousel-inner">
                            <div class="item active">
                                <ul class="thumbnails">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a href="#" class="tag"></a>
                                            <a href="product_details.html"><img src="<c:url value="/assets/user/img/bootstrap-ring.png"/>" alt="bootstrap-ring"></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a href="#" class="tag"></a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/i.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a href="#" class="tag"></a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/g.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/s.png"/>" alt=""></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="item">
                                <ul class="thumbnails">
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/i.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/f.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/h.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                    <li class="span3">
                                        <div class="thumbnail">
                                            <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                            <a  href="product_details.html"><img src="<c:url value="/assets/user/img/j.jpg"/>" alt=""></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <a class="left carousel-control" href="#newProductCar" data-slide="prev">&lsaquo;</a>
                        <a class="right carousel-control" href="#newProductCar" data-slide="next">&rsaquo;</a>
                    </div>
                </div>
                <div class="row-fluid">
                    <ul class="thumbnails">
                        <li class="span4">
                            <div class="thumbnail">

                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a href="product_details.html"><img src="<c:url value="/assets/user/img/b.jpg"/>" alt=""></a>
                                <div class="caption cntr">
                                    <p>Manicure & Pedicure</p>
                                    <p><strong> $22.00</strong></p>
                                    <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                    <div class="actionList">
                                        <a class="pull-left" href="#">Add to Wish List </a>
                                        <a class="pull-left" href="#"> Add to Compare </a>
                                    </div>
                                    <br class="clr">
                                </div>
                            </div>
                        </li>
                        <li class="span4">
                            <div class="thumbnail">
                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a href="product_details.html"><img src="<c:url value="/assets/user/img/c.jpg"/>" alt=""></a>
                                <div class="caption cntr">
                                    <p>Manicure & Pedicure</p>
                                    <p><strong> $22.00</strong></p>
                                    <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                    <div class="actionList">
                                        <a class="pull-left" href="#">Add to Wish List </a>
                                        <a class="pull-left" href="#"> Add to Compare </a>
                                    </div>
                                    <br class="clr">
                                </div>
                            </div>
                        </li>
                        <li class="span4">
                            <div class="thumbnail">
                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a href="product_details.html"><img src="<c:url value="/assets/user/img/a.jpg"/>" alt=""></a>
                                <div class="caption cntr">
                                    <p>Manicure & Pedicure</p>
                                    <p><strong> $22.00</strong></p>
                                    <h4><a class="shopBtn" href="#" title="add to cart"> Add to cart </a></h4>
                                    <div class="actionList">
                                        <a class="pull-left" href="#">Add to Wish List </a>
                                        <a class="pull-left" href="#"> Add to Compare </a>
                                    </div>
                                    <br class="clr">
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!--
            Featured Products
            -->
            <div class="well well-small">
                <h3><a class="btn btn-mini pull-right" href="products.html" title="View more">VIew More<span class="icon-plus"></span></a> Featured Products  </h3>
                <hr class="soften"/>
                <div class="row-fluid">
                    <ul class="thumbnails">
                        <li class="span4">
                            <div class="thumbnail">
                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a  href="product_details.html"><img src="<c:url value="/assets/user/img/d.jpg"/>" alt=""></a>
                                <div class="caption">
                                    <h5>Manicure & Pedicure</h5>
                                    <h4>
                                        <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                        <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                        <span class="pull-right">$22.00</span>
                                    </h4>
                                </div>
                            </div>
                        </li>
                        <li class="span4">
                            <div class="thumbnail">
                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a  href="product_details.html"><img src="<c:url value="/assets/user/img/e.jpg"/>" alt=""></a>
                                <div class="caption">
                                    <h5>Manicure & Pedicure</h5>
                                    <h4>
                                        <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                        <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                        <span class="pull-right">$22.00</span>
                                    </h4>
                                </div>
                            </div>
                        </li>
                        <li class="span4">
                            <div class="thumbnail">
                                <a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
                                <a  href="product_details.html"><img src="<c:url value="/assets/user/img/f.jpg"/>" alt=""/></a>
                                <div class="caption">
                                    <h5>Manicure & Pedicure</h5>
                                    <h4>
                                        <a class="defaultBtn" href="product_details.html" title="Click to view"><span class="icon-zoom-in"></span></a>
                                        <a class="shopBtn" href="#" title="add to cart"><span class="icon-plus"></span></a>
                                        <span class="pull-right">$22.00</span>
                                    </h4>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="well well-small">
                <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                Popular Products
            </div>
            <hr>
            <div class="well well-small">
                <a class="btn btn-mini pull-right" href="#">View more <span class="icon-plus"></span></a>
                Best selling Products
            </div>
        </div>
    </div>
    <!--
    Clients
    -->
    <section class="our_client">
        <hr class="soften"/>
        <h4 class="title cntr"><span class="text">Manufactures</span></h4>
        <hr class="soften"/>
        <div class="row">
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/1.png"/>"></a>
            </div>
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/2.png"/>"></a>
            </div>
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/3.png"/>"></a>
            </div>
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/4.png"/>"></a>
            </div>
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/5.png"/>"></a>
            </div>
            <div class="span2">
                <a href="#"><img alt="" src="<c:url value="/assets/user/img/6.png"/>"></a>
            </div>
        </div>
    </section>

    <!--
    Footer
    -->
    <footer class="footer">
        <div class="row-fluid">
            <div class="span2">
                <h5>Your Account</h5>
                <a href="#">YOUR ACCOUNT</a><br>
                <a href="#">PERSONAL INFORMATION</a><br>
                <a href="#">ADDRESSES</a><br>
                <a href="#">DISCOUNT</a><br>
                <a href="#">ORDER HISTORY</a><br>
            </div>
            <div class="span2">
                <h5>Iinformation</h5>
                <a href="contact.html">CONTACT</a><br>
                <a href="#">SITEMAP</a><br>
                <a href="#">LEGAL NOTICE</a><br>
                <a href="#">TERMS AND CONDITIONS</a><br>
                <a href="#">ABOUT US</a><br>
            </div>
            <div class="span2">
                <h5>Our Offer</h5>
                <a href="#">NEW PRODUCTS</a> <br>
                <a href="#">TOP SELLERS</a><br>
                <a href="#">SPECIALS</a><br>
                <a href="#">MANUFACTURERS</a><br>
                <a href="#">SUPPLIERS</a> <br/>
            </div>
            <div class="span6">
                <h5>The standard chunk of Lorem</h5>
                The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for
                those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
                Malorum" by Cicero are also reproduced in their exact original form,
                accompanied by English versions from the 1914 translation by H. Rackham.
            </div>
        </div>
    </footer>
</div><!-- /container -->

<div class="copyright">
    <div class="container">
        <p class="pull-right">
            <a href="#"><img src="<c:url value="/assets/user/img/maestro.png"/>" alt="payment"></a>
            <a href="#"><img src="<c:url value="/assets/user/img/mc.png"/>" alt="payment"></a>
            <a href="#"><img src="<c:url value="/assets/user/img/pp.png"/>" alt="payment"></a>
            <a href="#"><img src="<c:url value="/assets/user/img/visa.png"/>" alt="payment"></a>
            <a href="#"><img src="<c:url value="/assets/user/img/disc.png"/>" alt="payment"></a>
        </p>
        <span>Copyright &copy; 2013<br> bootstrap ecommerce shopping template</span>
    </div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
<!-- Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/assets/user/js/jquery.js"/>"></script>
<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/jquery.easing-1.3.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/jquery.scrollTo-1.4.3.1-min.js"/>"></script>
<script src="<c:url value="/assets/user/js/shop.js"/>"></script>
</body>
</html>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <title>CSS Template</title>--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <style>--%>
<%--        * {--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>

<%--        body {--%>
<%--            font-family: Arial, Helvetica, sans-serif;--%>
<%--        }--%>

<%--        /* Style the header */--%>
<%--        header {--%>
<%--            background-color: #666;--%>
<%--            padding: 30px;--%>
<%--            text-align: center;--%>
<%--            font-size: 35px;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        /* Create two columns/boxes that floats next to each other */--%>
<%--        nav {--%>
<%--            float: left;--%>
<%--            width: 30%;--%>
<%--            height: 300px; /* only for demonstration, should be removed */--%>
<%--            background: #ccc;--%>
<%--            padding: 20px;--%>
<%--        }--%>

<%--        /* Style the list inside the menu */--%>
<%--        nav ul {--%>
<%--            list-style-type: none;--%>
<%--            padding: 0;--%>
<%--        }--%>

<%--        article {--%>
<%--            float: left;--%>
<%--            padding: 20px;--%>
<%--            width: 70%;--%>
<%--            background-color: #f1f1f1;--%>
<%--            height: 300px; /* only for demonstration, should be removed */--%>
<%--        }--%>

<%--        /* Clear floats after the columns */--%>
<%--        section::after {--%>
<%--            content: "";--%>
<%--            display: table;--%>
<%--            clear: both;--%>
<%--        }--%>

<%--        /* Style the footer */--%>
<%--        footer {--%>
<%--            background-color: #777;--%>
<%--            padding: 10px;--%>
<%--            text-align: center;--%>
<%--            color: white;--%>
<%--        }--%>

<%--        /* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */--%>
<%--        @media (max-width: 600px) {--%>
<%--            nav, article {--%>
<%--                width: 100%;--%>
<%--                height: auto;--%>
<%--            }--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--&lt;%&ndash;<%@include file="user/header.jsp"%>&ndash;%&gt;--%>
<%--<%@ include file="/WEB-INF/views/layout/user/header.jsp"%>--%>
<%--<decorator:body>--%>

<%--</decorator:body>--%>
<%--&lt;%&ndash;<%@include file="user/footer.jsp"%>&ndash;%&gt;--%>
<%--<%@ include file="/WEB-INF/views/layout/user/footer.jsp"%>--%>

<%--</body>--%>
<%--</html>--%>