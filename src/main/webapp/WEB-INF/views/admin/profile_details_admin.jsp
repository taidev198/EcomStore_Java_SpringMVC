<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/5/24
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Content wrapper -->
      <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="py-3 mb-4"><span class="text-muted fw-light">Account Settings /</span> Account</h4>

          <div class="row">
            <div class="col-md-12">
              <div class="card mb-4">
                <h4 class="card-header">Profile Details</h4>
                <!-- Account -->
                <div class="card-body">
                  <div class="d-flex align-items-start align-items-sm-center gap-4">
                    <img
                            src="../assets/img/avatars/1.png"
                            alt="user-avatar"
                            class="d-block w-px-120 h-px-120 rounded"
                            id="uploadedAvatar" />
                    <div class="button-wrapper">
                      <label for="upload" class="btn btn-primary me-2 mb-3" tabindex="0">
                        <span class="d-none d-sm-block">Upload new photo</span>
                        <i class="mdi mdi-tray-arrow-up d-block d-sm-none"></i>
                        <input
                                type="file"
                                id="upload"
                                class="account-file-input"
                                hidden
                                accept="image/png, image/jpeg" />
                      </label>
                      <button type="button" class="btn btn-outline-danger account-image-reset mb-3">
                        <i class="mdi mdi-reload d-block d-sm-none"></i>
                        <span class="d-none d-sm-block">Reset</span>
                      </button>

                      <div class="text-muted small">Allowed JPG, GIF or PNG. Max size of 800K</div>
                    </div>
                  </div>
                </div>
                <div class="card-body pt-2 mt-1">
                  <form id="formAccountSettings" method="POST" onsubmit="return false">
                    <div class="row mt-2 gy-4">
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <input
                                  class="form-control"
                                  type="text"
                                  id="firstName"
                                  name="firstName"
                                  value="${user.username}"
                                  autofocus />
                          <label for="firstName">UserName</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <input class="form-control" type="text" name="lastName" id="lastName" value="${user.fullname}" />
                          <label for="lastName">Full Name</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <input
                                  class="form-control"
                                  type="text"
                                  id="email"
                                  name="email"
                                  value="${user.email}"
                                  placeholder="john.doe@example.com" />
                          <label for="email">E-mail</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <input
                                  type="password"
                                  class="form-control"
                                  id="password"
                                  value="${user.password}"
                                  name="ThemeSelection" />
                          <label for="password">Password</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="input-group input-group-merge">
                          <div class="form-floating form-floating-outline">
                            <input
                                    type="text"
                                    id="phoneNumber"
                                    name="number"
                                    value="${user.number}"
                                    class="form-control"
                                    placeholder="202 555 0111" />
                            <label for="phoneNumber">Phone Number</label>
                          </div>
                          <span class="input-group-text">US (+1)</span>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <input
                                  type="text"
                                  class="form-control"
                                  id="address"
                                  value="${user.address}"
                                  name="address"
                                  placeholder="Address" />
                          <label for="address">Address</label>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <select name="cars" id="cars" >
                            <c:forEach var="statusItem" items="${status}">
                              <option value="${statusItem.id}" <c:if test="${statusItem.id == user.statusId}">selected </c:if>>${statusItem.name}</option>
                            </c:forEach>
                          </select>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-floating form-floating-outline">
                          <select name="cars" >
                            <c:forEach var="roleItem" items="${roles}">
                              <option value="${roleItem.id}" <c:if test="${roleItem.id == user.roleId}">selected </c:if>>${roleItem.name}</option>
                            </c:forEach>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="mt-4">
                      <button type="submit" class="btn btn-primary me-2">Save changes</button>
                      <button type="reset" class="btn btn-outline-secondary">Reset</button>
                    </div>
                  </form>

                </div>
                <!-- /Account -->
              </div>
              <div class="card">
                <h5 class="card-header fw-normal">Delete Account</h5>
                <div class="card-body">
                  <div class="mb-3 col-12 mb-0">
                    <div class="alert alert-warning">
                      <h6 class="alert-heading mb-1">Are you sure you want to delete your account?</h6>
                      <p class="mb-0">Once you delete your account, there is no going back. Please be certain.</p>
                    </div>
                  </div>
                  <form id="formAccountDeactivation" onsubmit="return false">
                    <div class="form-check mb-3 ms-3">
                      <input
                              class="form-check-input"
                              type="checkbox"
                              name="accountActivation"
                              id="accountActivation" />
                      <label class="form-check-label" for="accountActivation"
                      >I confirm my account deactivation</label
                      >
                    </div>
                    <button type="submit" class="btn btn-danger">Deactivate Account</button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- / Content -->