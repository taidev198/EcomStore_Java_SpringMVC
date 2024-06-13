<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/2/24
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Electro - HTML Ecommerce Template</title>

    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/bootstrap.min.css"/>"/>

    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick.css"/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick-theme.css"/>"/>

    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/nouislider.min.css"/>"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="<c:url value="/assets/user/css/font-awesome.min.css"/>">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/style.css"/>"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"/>"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"/>"></script>
    <![endif]-->

</head>
<body>

<%@include file="/WEB-INF/views/layout/user/header.jsp"%>

<decorator:body/>

<%@include file="/WEB-INF/views/layout/user/footer.jsp"%>



<!-- jQuery Plugins -->
<script src="<c:url value="/assets/user/js/jquery.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/slick.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/nouislider.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/jquery.zoom.min.js"/>"></script>
<script src="<c:url value="/assets/user/js/main.js"/>"></script>
<script>
    for (let i =0; i< ${product.getProductVariants().size()}; i++) {
        let id = '#variant' + i;
        $(id).change(function() {
            this.style.color = "blue";
            checkPrice(id);
        });
    }

    function checkPrice(id) {
        <c:forEach var="variants" items="${product.getProductVariantsValues()}" varStatus="index">
            if ('${variants.getVariantsValueName1()}' === $(id).val() || '${variants.getVariantsValueName()}' === $(id).val()){
                //check variant first
                for (let i =0; i< ${product.getProductVariants().size()}; i++) {
                    //check variant second
                    let id1 = '#variant' + i;
                    if (id1 === id) continue;
                    console.log($(id1).val() + 'id1')
                    console.log($(id).val() + 'id')
                    console.log('${variants.getVariantsValueName()}')
                    console.log('${variants.getVariantsValueName1()}')
                    if ('${variants.getVariantsValueName()}' === $(id1).val() || '${variants.getVariantsValueName1()}' === $(id1).val()){
                        $('#price').html('$' + ${variants.getProductVariantsValuePrice()});
                        console.log($('#price').val() + 'price')
                        console.log(${variants.getProductVariantsValuePrice()} + 'setprice')
                    }
                }
            }
        </c:forEach>
    }

    </script>

    </body>
    </html>
