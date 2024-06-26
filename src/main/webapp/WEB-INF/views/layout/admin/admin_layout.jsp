<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/5/24
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html
        lang="en"
        class="light-style layout-menu-fixed layout-compact"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/assets/admin/"
        data-template="vertical-menu-template-free">
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Dashboard - Analytics | Materio - Bootstrap Material Design Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="<c:url value="/assets/admin/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
            rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/remixicon/remixicon.css"/>" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/flag-icons.css"/>" />


    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/fonts/materialdesignicons.css"/>" />

    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/node-waves/node-waves.css"/>" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/css/core.css"/>" class="template-customizer-core-css" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/css/theme-default.css"/>" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/css/demo.css"/>" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/apex-charts/apex-charts.css"/>" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/typeahead-js/typeahead.css"/>" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/datatables-bs5/datatables.bootstrap5.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css"/>">
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/select2/select2.css"/>" />
    <link rel="stylesheet" href="<c:url value="/assets/admin/vendor/libs/@form-validation/form-validation.css"/>" />


    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="<c:url value="/assets/admin/vendor/js/helpers.js"/>"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="<c:url value="/assets/admin/js/config.js"/>"></script>
</head>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->
<%@include file="/WEB-INF/views/layout/admin/navigation_admin_layout.jsp"%>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
            <!-- Navbar -->
           <%@include file="/WEB-INF/views/layout/admin/header_admin.jsp"%>
            <!-- / Navbar -->

            <decorator:body/>

                <!-- Footer -->
              <%@include file="/WEB-INF/views/layout/admin/footer_admin.jsp"%>
                <!-- / Footer -->

                <div class="content-backdrop fade"></div>
            </div>
            <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<div class="buy-now">
    <a
            href="https://themeselection.com/item/materio-bootstrap-html-admin-template/"
            target="_blank"
            class="btn btn-danger btn-buy-now"
    >Upgrade to Pro</a
    >
</div>

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="<c:url value="/assets/admin/vendor/libs/jquery/jquery.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/libs/popper/popper.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/js/bootstrap.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/libs/node-waves/node-waves.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"/>"></script>
<script src="<c:url value="/assets/admin/vendor/js/menu.js"/>"></script>

<!-- endbuild -->

<!-- Vendors JS -->
<script src="<c:url value="/assets/admin/vendor/libs/apex-charts/apexcharts.js"/>"></script>

<!-- Main JS -->
<script src="<c:url value="/assets/admin/js/main.js"/>"></script>

<!-- Page JS -->
<script src="<c:url value="/assets/admin/js/dashboards-analytics.js"/>"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>