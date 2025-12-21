<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/dashboard.css">
</head>

<body>
<div class="admin-wrapper">
    <!-- Sidebar -->
    <jsp:include page="adminSidebar.jsp"/>

    <!-- Nội dung chính -->
    <main class="admin-content">
        <header class="admin-header">
            <h1><i class="fa-solid fa-chart-line"></i> Tổng quan hệ thống</h1>
            <p>Xin chào, Admin! Dưới đây là thống kê hoạt động hôm nay.</p>

            <div class="filter-bar">
                <label for="time-filter">Xem theo:</label>
                <select id="time-filter">
                    <option value="today">Hôm nay</option>
                    <option value="week">7 ngày qua</option>
                    <option value="month">Tháng này</option>
                </select>
            </div>
        </header>

        <section class="dashboard-cards">
            <div class="card orders">
                <i class="fa-solid fa-receipt"></i>
                <h3>Tổng đơn hàng</h3>
                <p>128</p>
            </div>
            <div class="card revenue">
                <i class="fa-solid fa-sack-dollar"></i>
                <h3>Doanh thu hôm nay</h3>
                <p>12.500.000₫</p>
            </div>
            <div class="card users">
                <i class="fa-solid fa-user-plus"></i>
                <h3>Người dùng mới</h3>
                <p>5</p>
            </div>
            <div class="card products">
                <i class="fa-solid fa-boxes-stacked"></i>
                <h3>Sản phẩm đang bán</h3>
                <p>42</p>
            </div>
        </section>

        <section class="dashboard-chart">
            <h2>Thống kê tổng quan hôm nay</h2>
            <canvas id="overviewChart"></canvas>
        </section>

        <section class="quick-actions">
            <a href="add-product.html" class="quick-btn"><i class="fa-solid fa-plus"></i> Thêm sản phẩm</a>
            <a href="orders.jsp" class="quick-btn"><i class="fa-solid fa-truck"></i> Xử lý đơn hàng</a>
        </section>
    </main>

</div>
</body>

</html>