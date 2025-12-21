<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/manageAdmin.css">
</head>

<body>
<div class="admin-wrapper">
    <!-- Sidebar -->
    <%@include file="adminSidebar.jsp" %>

    <!-- Nội dung chính -->
    <main class="admin-content">
        <header class="admin-header">
            <h1>Quản lý & Phân quyền Admin</h1>
            <p>Danh sách Admin và quyền hạn</p>
        </header>

        <!-- Nút thêm Admin -->
        <div class="admin-actions">
            <button class="btn-primary" id="openAddAdmin"><i class="fa-solid fa-plus"></i> Thêm Admin</button>
        </div>

        <!-- Bảng danh sách Admin -->
        <div class="table-card">
            <table>
                <thead>
                <tr>
                    <th>Tên</th>
                    <th>Email</th>
                    <th>Quyền</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Nguyễn Văn A</td>
                    <td>adminA@example.com</td>
                    <td><span class="badge badge-super">Super Admin</span></td>
                    <td>
                        <button class="btn-icon edit"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn-icon delete"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>Trần Thị B</td>
                    <td>adminB@example.com</td>
                    <td><span class="badge badge-normal">Quản trị viên</span></td>
                    <td>
                        <button class="btn-icon edit"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn-icon delete"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </main>
</div>

</body>
</html>
