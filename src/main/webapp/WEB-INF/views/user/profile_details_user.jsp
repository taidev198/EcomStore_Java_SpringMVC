<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/7/24
  Time: 10:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">

            <div class="col-md-8">
<%--                <!-- Billing Details -->--%>
<%--                <div class="billing-details">--%>
<%--                    <div class="section-title">--%>
<%--                        <h3 class="title">THONG TIN CA NHAN</h3>--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="first-name" placeholder="First Name">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="last-name" placeholder="Last Name">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="email" name="email" placeholder="Email">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="address" placeholder="Address">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="city" placeholder="City">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="country" placeholder="Country">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="text" name="zip-code" placeholder="ZIP Code">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <input class="input" type="tel" name="tel" placeholder="Telephone">--%>
<%--                    </div>--%>
<%--                    <div class="form-group">--%>
<%--                        <div class="input-checkbox">--%>
<%--                            <input type="checkbox" id="create-account">--%>
<%--                            <label for="create-account">--%>
<%--                                <span></span>--%>
<%--                                Create Account?--%>
<%--                            </label>--%>
<%--                            <div class="caption">--%>
<%--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>--%>
<%--                                <input class="input" type="password" name="password" placeholder="Enter Your Password">--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <!-- /Billing Details -->--%>

    <!-- Account -->
<%--    <div class="card-body">--%>
<%--        <div class="d-flex align-items-start align-items-sm-center gap-4">--%>
<%--            <img--%>
<%--                    src="../assets/img/avatars/1.png"--%>
<%--                    alt="user-avatar"--%>
<%--                    class="d-block w-px-120 h-px-120 rounded"--%>
<%--                    id="uploadedAvatar" />--%>
<%--            <div class="button-wrapper">--%>
<%--                <label for="upload" class="btn btn-primary me-2 mb-3" tabindex="0">--%>
<%--                    <span class="d-none d-sm-block">Upload new photo</span>--%>
<%--                    <i class="mdi mdi-tray-arrow-up d-block d-sm-none"></i>--%>
<%--                    <input--%>
<%--                            type="file"--%>
<%--                            id="upload"--%>
<%--                            class="account-file-input"--%>
<%--                            hidden--%>
<%--                            accept="image/png, image/jpeg" />--%>
<%--                </label>--%>
<%--                <button type="button" class="btn btn-outline-danger account-image-reset mb-3">--%>
<%--                    <i class="mdi mdi-reload d-block d-sm-none"></i>--%>
<%--                    <span class="d-none d-sm-block">Reset</span>--%>
<%--                </button>--%>

<%--                <div class="text-muted small">Allowed JPG, GIF or PNG. Max size of 800K</div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="card-body pt-2 mt-1">
        <form id="formAccountSettings" method="POST" action="<c:url value="/user-update-profile"/>" name="user">
            <h4 class="card-header" ${alert}>${message}</h4>
            <div class="row mt-2 gy-4">
                <div class="col-md-6">
                    <div class="form-floating form-floating-outline">
                        <input type="hidden" name="id" value="${user.id}">
                        <label for="firstName">UserName</label>
                        <input
                                class="form-control"
                                type="text"
                                id="firstName"
                                name="username"
                                value="${user.username}"
                                autofocus />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating form-floating-outline">
                        <label for="lastName">Full Name</label>
                        <input class="form-control" type="text" name="fullname" id="lastName" value="${user.fullname}" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating form-floating-outline">
                        <label for="email">E-mail</label>
                        <input
                                class="form-control"
                                type="text"
                                id="email"
                                name="email"
                                value="${user.email}"
                                placeholder="john.doe@example.com" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating form-floating-outline">
                        <label for="password">Password</label>
                        <input
                                type="password"
                                class="form-control"
                                id="password"
                                value="${user.password}"
                                name="password" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="input-group input-group-merge">
                        <div class="form-floating form-floating-outline">
                            <label for="phoneNumber">Phone Number</label>
                            <input
                                    type="text"
                                    id="phoneNumber"
                                    name="number"
                                    value="${user.number}"
                                    class="form-control"
                                    placeholder="202 555 0111" />
                        </div>
                        <span class="input-group-text">US (+1)</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating form-floating-outline">
                        <label for="address">Address</label>
                        <input
                                type="text"
                                class="form-control"
                                id="address"
                                value="${user.address}"
                                name="address"
                                placeholder="Address" />
                    </div>
                </div>
            </div>
            <div class="mt-4">
                <button type="submit" class="btn btn-primary me-2">Save changes</button>
            </div>
        </form>

    </div>
    <!-- /Account -->
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
