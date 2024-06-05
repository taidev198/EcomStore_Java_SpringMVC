<%--
  Created by IntelliJ IDEA.
  User: nguyenthanhtai
  Date: 6/5/24
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"  prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->

                <div class="container-xxl flex-grow-1 container-p-y">
                    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Basic Tables</h4>

                    <!-- Hoverable Table rows -->
                    <div class="card">
                        <h5 class="card-header">Hoverable rows</h5>
                        <div class="table-responsive text-nowrap">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Project</th>
                                    <th>Client</th>
                                    <th>Users</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody class="table-border-bottom-0">
                                <tr>
                                    <td>
                                        <i class="mdi mdi-wallet-travel mdi-20px text-danger me-3"></i
                                        ><span class="fw-medium">Tours Project</span>
                                    </td>
                                    <td>Albert Cook</td>
                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Lilian Fuller">
                                                <img src="<c:url value="/assets/admin/img/avatars/5.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Sophia Wilkerson">
                                                <img src="<c:url value="/assets/admin/img/avatars/6.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Christina Parker">
                                                <img src="<c:url value="/assets/admin/img/avatars/7.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                        </ul>
                                    </td>
                                    <td><span class="badge rounded-pill bg-label-primary me-1">Active</span></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-pencil-outline me-1"></i> Edit</a
                                                >
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a
                                                >
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="mdi mdi-basketball mdi-20px text-info me-3"></i
                                        ><span class="fw-medium">Sports Project</span>
                                    </td>
                                    <td>Barry Hunter</td>
                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Lilian Fuller">
                                                <img src="<c:url value="/assets/admin/img/avatars/5.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Sophia Wilkerson">
                                                <img src="<c:url value="/assets/admin/img/avatars/6.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Christina Parker">
                                                <img src="<c:url value="/assets/admin/img/avatars/7.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                        </ul>
                                    </td>
                                    <td><span class="badge rounded-pill bg-label-success me-1">Completed</span></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-pencil-outline me-1"></i> Edit</a
                                                >
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a
                                                >
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="mdi mdi-greenhouse mdi-20px text-success me-3"></i
                                        ><span class="fw-medium">Greenhouse Project</span>
                                    </td>
                                    <td>Trevor Baker</td>
                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Lilian Fuller">
                                                <img src="<c:url value="/assets/admin/img/avatars/5.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Sophia Wilkerson">
                                                <img src="<c:url value="/assets/admin/img/avatars/6.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Christina Parker">
                                                <img src="<c:url value="/assets/admin/img/avatars/7.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                        </ul>
                                    </td>
                                    <td><span class="badge rounded-pill bg-label-info me-1">Scheduled</span></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-pencil-outline me-1"></i> Edit</a
                                                >
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a
                                                >
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <i class="mdi mdi-bank mdi-20px text-primary me-3"></i
                                        ><span class="fw-medium">Bank Project</span>
                                    </td>
                                    <td>Jerry Milton</td>
                                    <td>
                                        <ul class="list-unstyled users-list m-0 avatar-group d-flex align-items-center">
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Lilian Fuller">
                                                <img src="<c:url value="/assets/admin/img/avatars/5.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Sophia Wilkerson">
                                                <img src="<c:url value="/assets/admin/img/avatars/6.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                            <li
                                                    data-bs-toggle="tooltip"
                                                    data-popup="tooltip-custom"
                                                    data-bs-placement="top"
                                                    class="avatar avatar-xs pull-up"
                                                    title="Christina Parker">
                                                <img src="<c:url value="/assets/admin/img/avatars/7.png"/>" alt="Avatar" class="rounded-circle" />
                                            </li>
                                        </ul>
                                    </td>
                                    <td><span class="badge rounded-pill bg-label-warning me-1">Pending</span></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </button>
                                            <div class="dropdown-menu">
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-pencil-outline me-1"></i> Edit</a
                                                >
                                                <a class="dropdown-item" href="javascript:void(0);"
                                                ><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a
                                                >
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!--/ Hoverable Table rows -->
                </div>
                <!-- / Content -->

                <div class="content-backdrop fade"></div>
            </div>
