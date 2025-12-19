<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hải Sản Biển Xanh</title>
    <link rel="icon" href="https://copilot.microsoft.com/th/id/BCO.46901ef9-0615-4efe-929b-4c6ad9f61546.png" type="image/jpeg" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/about.css">
    <link rel="stylesheet" href="css/cart.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>

<body>
<header>
    <div class="header-container">
        <div class="header-top">
            <!-- Logo -->
            <a href="index.jsp" class="logo">
                <img src="assets/img/avata.png" alt="" />
                <span>Biển Xanh</span>
            </a>

            <!-- Search Bar -->
            <div class="search-bar">
                <input type="text" placeholder="Tìm kiếm hải sản...">
                <button><i class="fa fa-search"></i></button>
            </div>

            <!-- Navigation -->
            <nav>
                <a href="index.jsp">Trang chủ</a>
                <a href="about.html">Giới thiệu</a>
                <a href="products.jsp">Sản phẩm</a>
                <a href="point.jsp">Điểm thưởng</a>

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

    <main class="about-section">
        <h2>Giới Thiệu Về Biển Xanh</h2>

        <div class="about-block">
            <h3>1. Tổng Quan Về Công Ty</h3>
            <p><strong>Công ty TNHH Biển Xanh</strong> được thành lập vào năm 2015, chuyên cung cấp hải sản tươi sống,
                đông
                lạnh và chế biến sẵn từ các vùng biển Việt Nam. Với hơn 10 năm hoạt động, Biển Xanh đã trở thành một
                trong những
                thương hiệu uy tín trong ngành thủy sản, phục vụ hàng triệu khách hàng trên toàn quốc và đối tác quốc
                tế.</p>
            <p>Chúng tôi sở hữu hệ thống kho lạnh hiện đại, xe chuyên dụng bảo quản nhiệt độ tiêu chuẩn, cùng đội ngũ
                nhân
                viên giao hàng chuyên nghiệp. Biển Xanh cam kết mang đến sản phẩm chất lượng cao, nguồn gốc rõ ràng, đảm
                bảo vệ
                sinh an toàn thực phẩm và giá cả hợp lý.</p>
        </div>

        <div class="about-block">
            <h3>2. Tại Sao Nên Chọn Chúng Tôi?</h3>
            <ul>
                <li>✅ Sản phẩm tươi sống, nguồn gốc rõ ràng, kiểm định chất lượng</li>
                <li>🚛 Giao hàng nhanh chóng, bảo quản lạnh chuyên nghiệp</li>
                <li>💬 Tư vấn tận tâm, hỗ trợ khách hàng 24/7</li>
                <li>🎯 Giá cả cạnh tranh, nhiều chương trình khuyến mãi hấp dẫn</li>
                <li>🏆 Thương hiệu uy tín, được hàng triệu khách hàng tin tưởng</li>
                <li>🌐 Hệ thống đặt hàng tiện lợi qua website, hotline, mạng xã hội</li>
            </ul>
            <p>Biển Xanh không chỉ cung cấp hải sản – chúng tôi mang đến trải nghiệm mua sắm an toàn, tiện lợi và đáng tin cậy cho mọi gia đình Việt.</p>
        </div>

        <div class="about-block">
            <h3>3. Lĩnh Vực Hoạt Động</h3>
            <ul>
                <li>🦐 Cung cấp hải sản tươi sống: cua, ghẹ, tôm, mực, cá, ốc, sò…</li>
                <li>❄️ Phân phối hải sản đông lạnh: cá hồi, cá ngừ, tôm sú, mực ống…</li>
                <li>🍱 Sản phẩm chế biến sẵn: cá hồi ngâm tương, set mukbang, sushi, sashimi…</li>
                <li>🚚 Giao hàng tận nơi toàn quốc, bảo quản lạnh 24/7</li>
                <li>🌍 Xuất khẩu hải sản sang thị trường Mỹ, Nhật, Hàn Quốc, EU</li>
            </ul>
        </div>

        <div class="about-block">
            <h3>4. Sứ Mệnh – Tầm Nhìn – Giá Trị Cốt Lõi</h3>
            <p><strong>Sứ mệnh:</strong> Kết nối người tiêu dùng với nguồn hải sản sạch, an toàn và bền vững từ biển
                Việt Nam.
            </p>
            <p><strong>Tầm nhìn:</strong> Trở thành thương hiệu hải sản hàng đầu Đông Nam Á, tiên phong trong công nghệ
                bảo
                quản và phân phối thực phẩm biển.</p>
            <p><strong>Giá trị cốt lõi:</strong></p>
            <ul>
                <li>🌊 Tươi ngon – Chất lượng – An toàn</li>
                <li>🤝 Minh bạch – Uy tín – Trách nhiệm</li>
                <li>🌱 Phát triển bền vững – Hợp tác cộng đồng – Bảo vệ môi trường biển</li>
                <li>💡 Đổi mới – Sáng tạo – Không ngừng cải tiến</li>
            </ul>
        </div>

        <div class="about-block">
            <h3>5. Các Dịch Vụ Của Công Ty</h3>
            <ul>
                <li>📦 Đặt hàng trực tuyến qua website, hotline, fanpage</li>
                <li>🚚 Giao hàng tận nơi toàn quốc, bảo quản lạnh chuyên dụng</li>
                <li>🧊 Đóng gói hút chân không, bảo quản đông lạnh đạt chuẩn</li>
                <li>🍽 Cung cấp hải sản cho nhà hàng, khách sạn, tiệc cưới, sự kiện</li>
                <li>📈 Tư vấn xuất khẩu, cung cấp số lượng lớn cho đối tác quốc tế</li>
                <li>🎁 Combo quà tặng hải sản cao cấp cho doanh nghiệp, dịp lễ Tết</li>
            </ul>
            <p>Biển Xanh không chỉ là nơi mua hải sản – chúng tôi là người bạn đồng hành trong từng bữa ăn, từng sự kiện
                và
                từng hành trình phát triển của bạn.</p>
        </div>
    </main>
<footer class="footer">
    <div class="footer-top">
        <div class="footer-logo">
            <img src="assets/img/avata.png" alt="Logo Biển Xanh" />
            <p>Công ty TNHH Biển Xanh<br>ĐKKD: 0313176983 - Cấp ngày 01/04/2015</p>
        </div>

        <div class="footer-links">
            <div>
                <h4>THÔNG TIN</h4>
                <ul>
                    <li><a href="policy.jsp">Chính sách bảo mật</a></li>
                    <li><a href="policy.jsp">Chính sách thanh toán</a></li>
                    <li><a href="policy.jsp">Chính sách vận chuyển</a></li>
                    <li><a href="policy.jsp">Chính sách kiểm hàng</a></li>
                    <li><a href="policy.jsp">Chính sách đổi trả</a></li>
                </ul>
            </div>
            <div>
                <h4>GIỚI THIỆU</h4>
                <ul>
                    <li><a href="about.html">Về Biển Xanh</a></li>
                    <li><a href="introduction.jsp">Hướng dẫn mua hàng</a></li>
                    <li><a href="introduction.jsp">Hướng dẫn thanh toán</a></li>
                    <li><a href="introduction.jsp">Hướng dẫn đổi trả</a></li>
                </ul>
            </div>
            <div>
                <h4>LIÊN HỆ</h4>
                <ul>
                    <li>VP: 128 Đào Duy Anh, P.9, Q.Phú Nhuận, TP.HCM</li>
                    <li>CN1: 125 Phan Đăng Lưu, P.7, Q.Phú Nhuận</li>
                    <li>CN2: 42 Hoa Sứ, P.7, Q.Phú Nhuận</li>
                    <li>Hotline: 0903 73 22 93</li>
                </ul>
            </div>
        </div>

        <div class="footer-social">
            <h4>Kết nối với chúng tôi</h4>
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
            <a href="#"><i class="fab fa-tiktok"></i></a>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="footer-transport">
            <i class="fa-regular fa-copyright"></i>
            <p> 2025 Biển Xanh | Giao hàng toàn quốc</p>
        </div>
        <div class="payment-icons">
            <img src="https://upload.wikimedia.org/wikipedia/commons/0/04/Visa.svg" alt="Visa" />
            <img src="https://file.hstatic.net/1000030244/file/ck_cd323f6891834e93b197bb29a52bf2d7.svg" alt="Mastercard" />
            <img src="https://file.hstatic.net/1000030244/file/momo_0648f180f1a64e3f84adbbce2c1eb64c.svg" alt="JCB" />
            <img src="https://file.hstatic.net/1000030244/file/vnpay_d02a24cac6ee4e3eb900756492d7e11a.svg   " alt="ATM" />
        </div>
    </div>
</footer>
    <div class="contact-floating">
        <div class="circle-btn circle-call">
            <i class="fa-solid fa-phone"></i>
            <div class="contact-info">Gọi: 0903 732 293</div>
        </div>

        <div class="circle-btn circle-zalo">
            <span>Zalo</span>
            <div class="contact-info">Zalo: 0913 433 587</div>
        </div>

        <div class="circle-btn circle-messenger">
            <i class="fa-brands fa-facebook-messenger"></i>
            <div class="contact-info">Messenger: Biển Xanh</div>
        </div>
        <div class="circle-btn circle-review">
            <i class="fa-solid fa-message"></i>
            <div class="contact-info">Đánh giá: Gửi phản hồi</div>
        </div>
    </div>

</body>