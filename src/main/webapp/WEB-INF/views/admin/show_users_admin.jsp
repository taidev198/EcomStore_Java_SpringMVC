<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/5/24
  Time: 8:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row gy-4">
            <!-- Data Tables -->
            <div class="col-12">
                <div class="card">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="table-light">
                            <tr>
                                <th class="text-truncate"></th>
                                <th class="text-truncate">User</th>
                                <th class="text-truncate">Email</th>
                                <th class="text-truncate">Role</th>
                                <th class="text-truncate">Age</th>
                                <th class="text-truncate">Salary</th>
                                <th class="text-truncate">Status</th>
                                <th class="text-truncate">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
<%--                                <td class="control" tabindex="1" style=""></td>--%>
                                <td class="dt-checkboxes-cell">
                                <input type="checkbox" class="form-check-input">
                                </td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/1.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Jordan Stevenson</h6>
                                            <small class="text-truncate">@amiccoo</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">susanna.Lind57@gmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-laptop mdi-24px text-danger me-1"></i> Admin
                                </td>
                                <td class="text-truncate">24</td>
                                <td class="text-truncate">34500$</td>
                                <td><span class="badge bg-label-warning rounded-pill">Pending</span></td>
    <td>
        <div class="dropdown">
            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-dots-vertical"></i>
            </button>
            <div class="dropdown-menu" style="">
                <a class="dropdown-item waves-effect" href="javascript:void(0);"><i class="mdi mdi-pencil-outline me-1"></i> Edit</a>
                <a class="dropdown-item waves-effect" href="javascript:void(0);"><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a>
            </div>
        </div>
    </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/3.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Benedetto Rossiter</h6>
                                            <small class="text-truncate">@brossiter15</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">estelle.Bailey10@gmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-pencil-outline text-info mdi-24px me-1"></i> Editor
                                </td>
                                <td class="text-truncate">29</td>
                                <td class="text-truncate">64500$</td>
                                <td><span class="badge bg-label-success rounded-pill">Active</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/2.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Bentlee Emblin</h6>
                                            <small class="text-truncate">@bemblinf</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">milo86@hotmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-cog-outline text-warning mdi-24px me-1"></i> Author
                                </td>
                                <td class="text-truncate">44</td>
                                <td class="text-truncate">94500$</td>
                                <td><span class="badge bg-label-success rounded-pill">Active</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/5.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Bertha Biner</h6>
                                            <small class="text-truncate">@bbinerh</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">lonnie35@hotmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-pencil-outline text-info mdi-24px me-1"></i> Editor
                                </td>
                                <td class="text-truncate">19</td>
                                <td class="text-truncate">4500$</td>
                                <td><span class="badge bg-label-warning rounded-pill">Pending</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/4.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Beverlie Krabbe</h6>
                                            <small class="text-truncate">@bkrabbe1d</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">ahmad_Collins@yahoo.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-chart-donut mdi-24px text-success me-1"></i> Maintainer
                                </td>
                                <td class="text-truncate">22</td>
                                <td class="text-truncate">10500$</td>
                                <td><span class="badge bg-label-success rounded-pill">Active</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/7.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Bradan Rosebotham</h6>
                                            <small class="text-truncate">@brosebothamz</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">tillman.Gleason68@hotmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-pencil-outline text-info mdi-24px me-1"></i> Editor
                                </td>
                                <td class="text-truncate">50</td>
                                <td class="text-truncate">99500$</td>
                                <td><span class="badge bg-label-warning rounded-pill">Pending</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/6.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Bree Kilday</h6>
                                            <small class="text-truncate">@bkildayr</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">otho21@gmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-account-outline mdi-24px text-primary me-1"></i> Subscriber
                                </td>
                                <td class="text-truncate">23</td>
                                <td class="text-truncate">23500$</td>
                                <td><span class="badge bg-label-success rounded-pill">Active</span></td>
                            </tr>
                            <tr class="border-transparent">
                                <td>
                                    <div class="d-flex align-items-center">
                                        <div class="avatar avatar-sm me-3">
                                            <img src="<c:url value="/assets/admin/img/avatars/1.png"/>" alt="Avatar" class="rounded-circle" />
                                        </div>
                                        <div>
                                            <h6 class="mb-0 text-truncate">Breena Gallemore</h6>
                                            <small class="text-truncate">@bgallemore6</small>
                                        </div>
                                    </div>
                                </td>
                                <td class="text-truncate">florencio.Little@hotmail.com</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-account-outline mdi-24px text-primary me-1"></i> Subscriber
                                </td>
                                <td class="text-truncate">33</td>
                                <td class="text-truncate">20500$</td>
                                <td><span class="badge bg-label-secondary rounded-pill">Inactive</span></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Data Tables -->
        </div>
    </div>
    <!--  Content -->