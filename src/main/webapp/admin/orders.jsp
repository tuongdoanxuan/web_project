<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="vi">

    <head>
        <jsp:include page="adminCommonLinks.jsp"/>
        <link rel="stylesheet" href="${contextPath}/css/admin/orders.css">
    </head>

    <body>
        <div class="admin-wrapper">
            <!-- Sidebar -->
            <jsp:include page="adminSidebar.jsp"/>

            <!-- Nội dung chính -->
            <main class="admin-content">
                <header class="admin-header">
                    <h1>Quản lý đơn hàng</h1>
                    <p>Danh sách các đơn hàng gần đây</p>
                </header>

                <!-- Tìm kiếm đơn hàng -->
                <div class="order-search">
                    <input type="text" id="searchOrder" placeholder="Nhập mã đơn hàng (VD: ĐH001)" />
                    <button onclick=""><i class="fa fa-search"></i> Tìm kiếm</button>
                </div>

                <!-- Bảng đơn hàng -->
                <section class="order-table">
                    <table>
                        <thead>
                            <tr>
                                <th><i class="fa-solid fa-barcode"></i> Mã đơn</th>
                                <th><i class="fa-solid fa-user"></i> Khách hàng</th>
                                <th><i class="fa-solid fa-calendar-day"></i> Ngày đặt</th>
                                <th><i class="fa-solid fa-money-bill-wave"></i> Tổng tiền</th>
                                <th><i class="fa-solid fa-circle-info"></i> Trạng thái</th>
                                <th><i class="fa-solid fa-gear"></i> Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>ĐH001</td>
                                <td>Nguyễn Văn A</td>
                                <td>08/11/2025</td>
                                <td>365.000₫</td>
                                <td><span class="status delivered">Đã giao</span></td>
                                <td>
                                    <a href="ordersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                    <button class="btn-delete" title="Xóa đơn">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>ĐH002</td>
                                <td>Trần Thị B</td>
                                <td>08/11/2025</td>
                                <td>180.000₫</td>
                                <td><span class="status pending">Đang xử lý</span></td>
                                <td>
                                    <a href="ordersDetail.jsp" class="btn-view" title="Xem chi tiết">
                                        <i class="fa-solid fa-eye"></i>
                                    </a>
                                    <button class="btn-delete" title="Xóa đơn">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </section>
            </main>
        </div>
    </body>

    </html>