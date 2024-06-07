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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row gy-4">
            <!-- Data Tables -->
            <form:form action="admin-delete-all" modelAttribute="ItemCheckBox">
<%--            <form>--%>
                <select name="totalItems" onchange="javascript:handleSelect(this)">
                    <option value="5" selected href=/admin-list-users">5</option>
                    <option value="10" href="/admin-list-users">10</option>
                    <option value="15" href="/admin-list-users">15</option>
                    <option value="20" href="/admin-list-users">20</option>
                </select>
                    <script type="text/javascript">
                        function handleSelect(elm)
                        {
                            window.location.href = "<c:url value="/admin-list-users"/>";
                        }
                    </script>
<%--            </form>--%>
                <br5>
                <input type="submit" value="Delete All" />
                <div class="col-12">
                <div class="card">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="table-light">
                            <tr>
                                <th class="text-truncate">ID</th>
                                <th class="text-truncate">Name</th>
                                <th class="text-truncate">Number</th>
                                <th class="text-truncate">Email</th>
                                <th class="text-truncate">Address</th>
                                <th class="text-truncate">Role</th>
                                <th class="text-truncate">Total Spending</th>
                                <th class="text-truncate">Status</th>
                                <th class="text-truncate">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="user" items="${users}">

                            <tr>
                                <td>
                                    <div class="text-truncate">
                                        <form:checkbox path="listUserId" value="${user.id}"/>
                                        <br>
                                    <%--                                        <div class="avatar avatar-sm me-3">--%>
<%--                                            <img src="<c:url value="/assets/admin/img/avatars/1.png"/>" alt="Avatar" class="rounded-circle" />--%>
<%--                                        </div>--%>

                                            <h6 class=" text-truncate">${user.id}</h6>
<%--                                            <small class="text-truncate">@amiccoo</small>--%>

                                    </div>
                                </td>
                                <td class="text-truncate">${user.email}</td>
                                <td class="text-truncate">
                                    <i class="mdi mdi-laptop mdi-24px text-danger me-1"></i> ${user.roleId}
                                </td>
                                <td class="text-truncate">${user.fullname}</td>
                                <td class="text-truncate">${user.address}</td>
                                <td><span class="badge bg-label-warning rounded-pill">${user.statusId}</span></td>
    <td>
        <div class="dropdown">
            <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-dots-vertical"></i>
            </button>
            <div class="dropdown-menu" style="">
                <a class="dropdown-item waves-effect" href="<c:url value="admin-edit/${user.id}"/>"><i class="mdi mdi-pencil-outline me-1"></i> Edit</a>
                <a class="dropdown-item waves-effect" href="<c:url value="admin-delete/${user.id}"/>"><i class="mdi mdi-trash-can-outline me-1"></i> Delete</a>
            </div>
        </div>
    </td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Data Tables -->
            </form:form>
        </div>
        <br>
        <nav aria-label="Page navigation">
            <ul class="pagination pagination-rounded pagination-outline-primary">
                <li class="page-item first">
                    <a class="page-link waves-effect" href="javascript:void(0);"><i class="tf-icon mdi mdi-chevron-double-left"></i></a>
                </li>
                <li class="page-item prev">
                    <a class="page-link waves-effect" href="javascript:void(0);"><i class="tf-icon mdi mdi-chevron-left"></i></a>
                </li>
<%--                loop show page--%>
                <c:forEach var="i" begin="1" end="${numbersOfPage}" >
                <li class="page-item">
                    <a class="page-link waves-effect" href="<c:url value="/admin-list-users/startPage=${i}&totalPage=${totalItems}"/>" name="startPage" id="startPage">${i}</a>
                </c:forEach>
                </li>
                <li class="page-item next">
                    <a class="page-link waves-effect" href="javascript:void(0);"><i class="tf-icon mdi mdi-chevron-right"></i></a>
                </li>
                <li class="page-item last">
                    <a class="page-link waves-effect" href="javascript:void(0);"><i class="tf-icon mdi mdi-chevron-double-right"></i></a>
                </li>
            </ul>
        </nav>
    </div>
    <!--  Content -->