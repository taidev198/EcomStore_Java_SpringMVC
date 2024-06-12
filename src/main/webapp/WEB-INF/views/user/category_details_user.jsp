<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/8/24
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <ul class="breadcrumb-tree">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">All Categories</a></li>
                    <li><a href="#">Accessories</a></li>
                    <li class="active">Headphones (227,490 Results)</li>
                </ul>
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <form:form action="${__SELF}/filterByBrand?listBrandName={brand}" modelAttribute="listBrandFilter" method="post">
                <div class="aside">
                    <h3 class="aside-title">Brand</h3>
                    <div class="checkbox-filter">
                        <div class="input-checkbox">
                            <c:forEach var="brand" items="${brands}">
                            <form:checkbox id="brand-1" path="listBrandName" value="${brand.attributeValueName}"/>
                            <label for="brand-1">
                                <span></span>
                                ${brand.attributeValueName}
                                <h6>${brand.numberProductsOfBrand}</h6>
                            </label>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                    <br><br>
                    <input type="submit" value="Submit" />
                </form:form>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Price</h3>
                    <div class="price-filter">
                        <div id="price-slider"></div>
                        <div class="input-number price-min">
                            <input id="price-min" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                        <span>-</span>
                        <div class="input-number price-max">
                            <input id="price-max" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Top selling</h3>
                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product01.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product02.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product03.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->
            </div>
            <!-- /ASIDE -->

            <!-- STORE -->
            <div id="store" class="col-md-9">
                <!-- store top filter -->
                <div class="store-filter clearfix">
                    <div class="store-sort">
                        <label>
                            Sort By:
                            <select class="input-select">
                                <option value="0">Popular</option>
                                <option value="1">Position</option>
                            </select>
                        </label>

                        <label>
                            Show:
                            <select class="input-select">
                                <option value="0">20</option>
                                <option value="1">50</option>
                            </select>
                        </label>
                    </div>
                    <ul class="store-grid">
                        <li class="active"><i class="fa fa-th"></i></li>
                        <li><a href="#"><i class="fa fa-th-list"></i></a></li>
                    </ul>
                </div>
                <!-- /store top filter -->

                <!-- store products -->
                <div class="row">
                    <c:forEach var="product" items="${products}">
                    <!-- product -->
                    <div class="col-md-4 col-xs-6">
                        <div class="product">
                            <div class="product-img">
                                <img
                                <c:forEach var="avatar" items="${avatars}">
                                <c:if test="${avatar.getProductId() == product.getProductId()}"> src="<c:url value="/assets/common/img/${avatar.imageUrl}"/>"
                                </c:if>
                                </c:forEach> alt="">
                                <div class="product-label">
                                    <span class="sale">-30%</span>
                                    <span class="new">NEW</span>
                                </div>
                            </div>
                            <div class="product-body">
                                <p class="product-category">Category</p>
                                <h3 class="product-name"><a href="<c:url value="/product/productId=${product.getProductId()}"/>">${product.getProductName()}</a></h3>
                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                <div class="product-rating">
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="product-btns">
                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
                                    <div class="dropdown">
                                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                        <div class="cart-dropdown">
                                            <div class="cart-list">
                                                <c:forEach var="attribute" items="${product.productAttributeValues}">
                                                    <ul class="list-group list-group-horizontal">
                                                        <li class="list-group-item"> <strong> ${attribute.attributeName} </strong> </li>
                                                        <li class="list-group-item">${attribute.attributeValueName}</li>
                                                    </ul>
                                                </c:forEach>
<%--                                                <div class="product-widget">--%>
<%--                                                    <div class="product-img">--%>
<%--                                                        <img src="./img/product02.png" alt="">--%>
<%--                                                    </div>--%>
<%--                                                    <div class="product-body">--%>
<%--                                                        <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                                        <h4 class="product-price"><span class="qty">3x</span>$980.00</h4>--%>
<%--                                                    </div>--%>
<%--                                                    <button class="delete"><i class="fa fa-close"></i></button>--%>
<%--                                                </div>--%>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="add-to-cart">
                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <!-- /product -->

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product02.png" alt="">--%>
<%--                                <div class="product-label">--%>
<%--                                    <span class="new">NEW</span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star-o"></i>--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <div class="clearfix visible-sm visible-xs"></div>--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product03.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <div class="clearfix visible-lg visible-md"></div>--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product04.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <div class="clearfix visible-sm visible-xs"></div>--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product05.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product06.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star-o"></i>--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <div class="clearfix visible-lg visible-md visible-sm visible-xs"></div>--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product07.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                    <i class="fa fa-star"></i>--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product08.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>

<%--                    <div class="clearfix visible-sm visible-xs"></div>--%>

<%--                    <!-- product -->--%>
<%--                    <div class="col-md-4 col-xs-6">--%>
<%--                        <div class="product">--%>
<%--                            <div class="product-img">--%>
<%--                                <img src="./img/product09.png" alt="">--%>
<%--                            </div>--%>
<%--                            <div class="product-body">--%>
<%--                                <p class="product-category">Category</p>--%>
<%--                                <h3 class="product-name"><a href="#">product name goes here</a></h3>--%>
<%--                                <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>--%>
<%--                                <div class="product-rating">--%>
<%--                                </div>--%>
<%--                                <div class="product-btns">--%>
<%--                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>--%>
<%--                                    <button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>--%>
<%--                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="add-to-cart">--%>
<%--                                <button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- /product -->--%>
                </div>
                <!-- /store products -->

                <!-- store bottom filter -->
                <div class="store-filter clearfix">
                    <span class="store-qty">Showing 20-100 products</span>
                    <ul class="store-pagination">
                        <li class="active">1</li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
                <!-- /store bottom filter -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->

