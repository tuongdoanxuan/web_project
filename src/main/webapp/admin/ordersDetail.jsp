<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/ordersDetail.css.css">
</head>

<body>
<div class="admin-wrapper">
    <!-- Sidebar -->
    <%@include file="adminSidebar.jsp" %>

    <!-- Nội dung chính -->
    <main class="admin-content">
        <header class="admin-header">
            <h1>Chi tiết đơn hàng <span class="order-code">#DH001</span></h1>
            <p>Thông tin đầy đủ về đơn hàng của <strong>Nguyễn Văn A</strong></p>
        </header>

        <section class="order-detail">
            <div class="info-box">
                <h3><i class="fa-solid fa-user"></i> Khách hàng</h3>
                <ul>
                    <li><strong>Họ tên:</strong> Nguyễn Văn A</li>
                    <li><strong>SĐT:</strong> 0901234567</li>
                    <li><strong>Địa chỉ:</strong> 123 Đường Biển, TP. Hồ Chí Minh</li>
                </ul>
            </div>

            <div class="info-box">
                <h3><i class="fa-solid fa-file-lines"></i> Đơn hàng</h3>
                <ul>
                    <li><strong>Ngày đặt:</strong> 08/11/2025</li>
                    <li><strong>Trạng thái:</strong> <span class="status delivered">Đã giao</span></li>
                    <li><strong>Ghi chú:</strong> Giao hàng trước 18h</li>
                </ul>
            </div>
        </section>

        <section class="order-items">
            <h3><i class="fa-solid fa-box"></i> Sản phẩm đã đặt</h3>
            <table>
                <thead>
                <tr>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Đơn giá</th>
                    <th>Thành tiền</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Tôm Sú Tươi 500g</td>
                    <td>2</td>
                    <td>145.000₫</td>
                    <td>290.000₫</td>
                </tr>
                <tr>
                    <td>Mực Nang 300g</td>
                    <td>1</td>
                    <td>75.000₫</td>
                    <td>75.000₫</td>
                </tr>
                </tbody>
            </table>
            <div class="total">
                <button class="btn-cancel"><i class="fa-solid fa-ban"></i> Hủy đơn hàng</button>
                <strong>Tổng cộng: 365.000₫</strong>
            </div>
        </section>
    </main>
</div>
</body>

</html>