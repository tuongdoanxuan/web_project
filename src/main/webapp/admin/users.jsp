<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/users.css">
</head>

<body>
    <div class="admin-wrapper">
        <!-- Sidebar -->
        <jsp:include page="adminSidebar.jsp"/>

        <!-- Nội dung chính -->
        <main class="admin-content">
            <header class="admin-header">
                <h1>Quản lý người dùng</h1>
                <p>Danh sách tài khoản đã đăng ký</p>
            </header>

            <!-- Tìm kiếm đơn hàng -->
            <div class="order-search">
                <input type="text" id="searchOrder" placeholder="Nhập mã người dùng (VD:U001)" />
                <button onclick=""><i class="fa fa-search"></i> Tìm kiếm</button>
            </div>

            <section class="user-table">
                <table>
                    <thead>
                        <tr>
                            <th><i class="fa-solid fa-id-badge"></i> ID</th>
                            <th><i class="fa-solid fa-user"></i> Họ tên</th>
                            <th><i class="fa-solid fa-envelope"></i> Email</th>
                            <th><i class="fa-solid fa-user-shield"></i> Vai trò</th>
                            <th><i class="fa-solid fa-circle-info"></i> Trạng thái</th>
                            <th><i class="fa-solid fa-gear"></i> Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>U001</td>
                            <td>Nguyễn Văn A</td>
                            <td>nguyena@example.com</td>
                            <td>Khách hàng</td>
                            <td><span class="status active">Hoạt động</span></td>
                            <td>
                                <a href="usersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                    <i class="fa-solid fa-eye"></i>
                                </a>
                                <button class="btn-lock" title="Khóa"><i class="fa-solid fa-lock"></i></button>
                            </td>
                        </tr>
                        <tr>
                            <td>U002</td>
                            <td>Trần Thị B</td>
                            <td>tranb@example.com</td>
                            <td>Admin</td>
                            <td><span class="status inactive">Bị khóa</span></td>
                            <td>
                                <a href="usersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                    <i class="fa-solid fa-eye"></i>
                                </a>
                                <button class="btn-unlock" title="Mở khóa"><i class="fa-solid fa-unlock"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </main>
    </div>
</body>

</html>