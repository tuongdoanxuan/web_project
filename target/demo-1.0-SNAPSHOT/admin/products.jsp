<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/products.css">
</head>

<body>
<div class="admin-wrapper">
    <!-- Sidebar -->
    <%@include file="adminSidebar.jsp" %>

    <!-- Nội dung chính -->
    <main class="admin-content">
        <header class="admin-header">
            <h1>Quản lý sản phẩm</h1>
            <p>Danh sách sản phẩm đang bán</p>
        </header>
        <!-- Tìm kiếm sản phẩm -->
        <div class="order-search">
            <input type="text" id="searchOrder" placeholder="Nhập tên sản phẩm (VD:Tôm)"/>
            <button onclick=""><i class="fa fa-search"></i> Tìm kiếm</button>
        </div>
        <div class="product-actions">
            <a href="addProducts.jsp" class="btn-add"><i class="fa-solid fa-plus"></i> Thêm sản phẩm</a>
        </div>

        <section class="product-table">
            <table>
                <thead>
                <tr>
                    <th>Ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Loại</th>
                    <th>Trạng thái</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><img
                            src="https://product.hstatic.net/200000325181/product/1_fee63a7c3f4c4a49b6d22d3397a5eb45_master.jpg"
                            alt="Tôm Sú"/></td>
                    <td>Tôm Sú Tươi 500g</td>
                    <td>145.000₫</td>
                    <td>Hải sản tươi</td>
                    <td><span class="status active">Đang bán</span></td>
                    <td>
                        <button class="btn-edit"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn-delete"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td><img src="https://i.imgur.com/Bj4vYxB.jpg" alt="Cua Gạch"/></td>
                    <td>Cua Gạch Cà Mau</td>
                    <td>220.000₫</td>
                    <td>Hải sản cao cấp</td>
                    <td><span class="status inactive">Tạm ngưng</span></td>
                    <td>
                        <button class="btn-edit"><i class="fa-solid fa-pen"></i></button>
                        <button class="btn-delete"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                </tbody>
            </table>
        </section>
    </main>
</div>
</body>

</html>