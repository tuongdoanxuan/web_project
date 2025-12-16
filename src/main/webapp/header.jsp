<%--
  Created by IntelliJ IDEA.
  User: longnguyen
  Date: 16/12/2025
  Time: 9:58 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header>
    <div class="header-container">
        <div class="header-top">
            <!-- Logo -->
            <a href="${pageContext.request.contextPath}/list-product" class="logo">
                <img src="${pageContext.request.contextPath}/assets/img/avata.png" alt="Biển Xanh" />
                <span>Biển Xanh</span>
            </a>

            <!-- Search Bar -->
            <div class="search-bar">
                <form action="/search" method="post">
                    <input type="text" name = "keyword" placeholder="Tìm kiếm hải sản...">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>

            <!-- Navigation -->
            <nav>
                <a href="${pageContext.request.contextPath}/list-product">Trang chủ</a>
                <a href="${pageContext.request.contextPath}/about.jsp">Giới thiệu</a>
                <a href="${pageContext.request.contextPath}/list-product">Sản phẩm</a>
                <a href="${pageContext.request.contextPath}/point.jsp">Điểm thưởng</a>

                <!-- Notifications -->
                <div class="notification-wrapper">
                    <div class="notification-icon" title="Thông báo">
                        <i class="fa-solid fa-bell"></i>
                        <span class="badge">2</span>
                    </div>
                    <div class="notification-dropdown">
                        <h4>🔔 Khuyến mãi mới</h4>
                        <ul>
                            <li>🎁 Giảm 10% cho đơn hàng từ 500.000₫</li>
                            <li>🦐 Tặng 1 phần Tôm Sú cho đơn từ 3 sản phẩm</li>
                        </ul>
                    </div>
                </div>

                <!-- User Menu -->
                <div class="user-menu">
                    <div class="user-icon">
                        <i class="fa-solid fa-user-circle"></i>
                        <span class="username">Xin chào, Tường</span>
                    </div>
                    <ul class="user-dropdown">
                        <div class="dropdown-header">
                            <h4>Tường</h4>
                            <p>Thành viên VIP ⭐</p>
                        </div>
                        <li><a href="account.jsp"><i class="fa-solid fa-id-card"></i> Thông tin tài khoản</a></li>
                        <li><a href="index_noLogin.jsp"><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a></li>
                    </ul>
                </div>

                <!-- Cart -->
                <div class="cart-hover-area">
                    <div class="cart-icon">
                        <a class="nav-link" href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a>
                        <span class="badge">2</span>
                    </div>
                    <div class="cart-dropdown">
                        <div class="cart-dropdown-header">
                            <h4><i class="fa-solid fa-cart-shopping"></i> Giỏ hàng của bạn</h4>
                        </div>
                        <ul class="cart-items">
                            <li>
                                <img src="https://product.hstatic.net/200000325181/product/1_fee63a7c3f4c4a49b6d22d3397a5eb45_master.jpg" alt="Tôm Sú">
                                <div class="item-info">
                                    <div class="item-header">
                                        <h4>Tôm Sú Tươi 500g</h4>
                                        <span class="quantity">x1</span>
                                    </div>
                                    <p>145.000₫</p>
                                </div>
                            </li>
                            <li>
                                <img src="https://i.imgur.com/Bj4vYxB.jpg" alt="Cua Gạch">
                                <div class="item-info">
                                    <div class="item-header">
                                        <h4>Cua Gạch Cà Mau</h4>
                                        <span class="quantity">x1</span>
                                    </div>
                                    <p>220.000₫</p>
                                </div>
                            </li>
                        </ul>
                        <div class="cart-summary">
                            <p><strong>Tổng cộng:</strong> <strong>365.000₫</strong></p>
                            <div class="cart-buttons">
                                <a href="cart.jsp" class="view-cart">Xem giỏ hàng</a>
                                <a href="checkout.jsp" class="checkout">Thanh toán</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
