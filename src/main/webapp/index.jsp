    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <!DOCTYPE html>
    <html lang="vi">

    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Hải Sản Biển Xanh</title>
        <link rel="icon" href="https://copilot.microsoft.com/th/id/BCO.46901ef9-0615-4efe-929b-4c6ad9f61546.png" type="image/jpeg" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/cart.css" />
        <link rel="stylesheet" href="css/login.css">
        <link rel="stylesheet" href="css/register.css">
        <link rel="stylesheet" href="css/products.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
        <script src="js/global.js"></script>
        <script src="js/autoSlide.js"></script>
    </head>

    <body>
    <header>
        <div class="header-container">
            <div class="header-top">
                <!-- Logo -->
                <a href="${pageContext.request.contextPath}/index" class="logo">
                <img src="${pageContext.request.contextPath}/assets/img/avata.png" alt="Biển Xanh" />
                    <span>Biển Xanh</span>
                </a>

                <!-- Search Bar -->
                <div class="search-bar">
                    <input type="text" placeholder="Tìm kiếm hải sản...">
                    <button><i class="fa fa-search"></i></button>
                </div>

                <!-- Navigation -->
                <nav>
                    <a href="${pageContext.request.contextPath}/index">Trang chủ</a>
                    <a href="${pageContext.request.contextPath}/about.jsp">Giới thiệu</a>
                    <a href="${pageContext.request.contextPath}/products">Sản phẩm</a>
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

    <main>
        <section class="hero">
            <h1>Hải Sản Tươi - Chất Lượng Từ Biển Cả</h1>
            <p>Biển Xanh mang đến cho bạn nguồn hải sản tươi ngon, sạch và được kiểm định an toàn.</p>
            <a href="${pageContext.request.contextPath}/products" class="btn">Khám phá ngay</a>
        </section>


        <section class="promo-gallery">
            <h2>Ưu Đãi Hải Sản</h2>

            <div class="gallery-wrapper">
                <div class="main-gallery">
                    <div class="main-image" aria-live="polite">
                        <img src="${pageContext.request.contextPath}/assets/img/promo1.png" class="active" />
                        <img src="${pageContext.request.contextPath}/assets/img/promo4.png" />
                        <img src="${pageContext.request.contextPath}/assets/img/promo5.jpg" />

                        <button class="nav-btn prev"><i class="fas fa-chevron-left"></i></button>
                        <button class="nav-btn next"><i class="fas fa-chevron-right"></i></button>

                        <div class="image-indicator">
                            <span class="dot active" data-index="0"></span>
                            <span class="dot" data-index="1"></span>
                            <span class="dot" data-index="2"></span>
                        </div>
                    </div>
                </div>

                <div class="side-images">
                    <div class="side-item">
                        <img src="${pageContext.request.contextPath}/assets/img/promo2.jpg" />
                    </div>
                    <div class="side-item">
                        <img src="${pageContext.request.contextPath}/assets/img/promo3.jpg" />
                    </div>
                </div>
            </div>
        </section>

        <section class="featured">
            <h2>🌟 Sản Phẩm Nổi Bật</h2>

            <div class="product-list">

                <c:if test="${empty featuredList}">
                    <p>Không có sản phẩm</p>
                </c:if>

                <c:forEach var="p" items="${featuredList}">
                    <c:if test="${p != null}">
                        <a href="${pageContext.request.contextPath}/product?id=${p.id}">
                            <div class="product-card">

                                <img src="${pageContext.request.contextPath}/assets/img/${empty p.tag ? 'default' : p.tag}.jpg" />

                                <h3>${p.productName}</h3>

                                <p class="price">
                                    <fmt:formatNumber value="${p.price}" type="number"/> đ
                                </p>

                                <p class="weight">Trọng lượng: ${p.weight} kg</p>
                                <p class="popularity">Đã bán: ${p.sold}</p>

                                <span class="tag">${p.tag}</span>

                                <div class="rating">
                                    ⭐⭐⭐⭐☆
                                    <span>${p.rating}</span>
                                </div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
        </section>


        <section class="hot-sale">
            <h2>Sản Phẩm Hot</h2>

            <c:choose>
                <c:when test="${hotProduct != null}">
                    <a href="${pageContext.request.contextPath}/product?id=${hotProduct.id}">
                        <div class="hot-sale-banner">

                            <img src="${pageContext.request.contextPath}/assets/img/${hotProduct.tag}.jpg" />

                            <div class="hot-sale-info">
                                <h3>${hotProduct.productName}</h3>

                                <p>
                                    <fmt:formatNumber value="${hotProduct.price}" type="number"/> đ
                                </p>

                                <p>Đã bán ${hotProduct.sold}</p>
                                <span>Xuất xứ: ${hotProduct.origin}</span>
                            </div>

                            <span class="hot-label">🔥 HOT</span>
                        </div>
                    </a>
                </c:when>

                <c:otherwise>
                    <p>Chưa có sản phẩm hot</p>
                </c:otherwise>
            </c:choose>
        </section>


        <section class="promotion">
            <h2>🎁 Khuyến Mại Hot</h2>

            <div class="product-list">

                <c:if test="${empty promotionList}">
                    <p>Không có sản phẩm khuyến mại</p>
                </c:if>

                <c:forEach var="p" items="${promotionList}">
                    <c:if test="${p != null}">
                        <a href="${pageContext.request.contextPath}/product?id=${p.id}">
                            <div class="product-card">

                                <!-- IMAGE -->
                                <img src="${pageContext.request.contextPath}/assets/img/${empty p.tag ? 'default' : p.tag}.jpg"
                                     alt="${p.productName}" />

                                <!-- NAME -->
                                <h3>${p.productName}</h3>

                                <!-- PRICE -->
                                <p class="price">
                                    <fmt:formatNumber value="${p.price}" type="number"/> đ
                                </p>

                                <!-- INFO -->
                                <p class="weight">Trọng lượng: ${p.weight} kg</p>
                                <p class="popularity">Đã bán: ${p.sold}</p>

                                <!-- TAG -->
                                <span class="tag">${p.tag}</span>

                                <!-- RATING -->
                                <div class="rating">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <span class="rating-score">${p.rating}</span>
                                </div>

                            </div>
                        </a>
                    </c:if>
                </c:forEach>

            </div>
        </section>



        <section class="customer-policy">
                <div class="container">
                    <h2>Chính Sách Khách Hàng</h2>
                    <div class="policy-list">
                        <div class="policy-item">
                            <i class="fa-solid fa-truck-fast"></i>
                            <h4>Giao hàng nhanh chóng</h4>
                            <p>Giao hàng tận nơi trong vòng 2h tại TP.HCM và 24h toàn quốc.</p>
                        </div>
                        <div class="policy-item">
                            <i class="fa-solid fa-rotate-left"></i>
                            <h4>Đổi trả linh hoạt</h4>
                            <p>Hỗ trợ đổi trả trong vòng 24h nếu sản phẩm không đạt chất lượng.</p>
                        </div>
                        <div class="policy-item">
                            <i class="fa-solid fa-headset"></i>
                            <h4>Hỗ trợ 24/7</h4>
                            <p>Đội ngũ chăm sóc khách hàng luôn sẵn sàng hỗ trợ bạn mọi lúc.</p>
                        </div>
                    </div>
                </div>
            </section>

        <section class="quality">
                <h2>Cam Kết Chất Lượng</h2>
                <div class="quality-list">
                    <div class="quality-item">
                        <i class="fa-solid fa-shield-halved"></i>
                        <h3>Kiểm định an toàn</h3>
                        <p>Sản phẩm được kiểm tra nghiêm ngặt về chất lượng và vệ sinh thực phẩm.</p>
                    </div>
                    <div class="quality-item">
                        <i class="fa-solid fa-truck-fast"></i>
                        <h3>Giao hàng nhanh</h3>
                        <p>Giao hàng tận nơi trong vòng 24h tại các thành phố lớn.</p>
                    </div>
                    <div class="quality-item">
                        <i class="fa-solid fa-leaf"></i>
                        <h3>Tươi sống 100%</h3>
                        <p>Hải sản được bảo quản lạnh và vận chuyển trực tiếp từ vùng biển.</p>
                    </div>
                </div>
            </section>

        <section class="testimonials">
                <h2>Khách Hàng Nói Gì</h2>
                <div class="testimonial-list">
                    <div class="testimonial">
                        <p>"Tôm hùm ở đây rất tươi, thịt chắc và ngọt. Giao hàng nhanh chóng!"</p>
                        <span>- Chị Lan, TP.HCM</span>
                    </div>
                    <div class="testimonial">
                        <p>"Tôi đã đặt cua biển cho bữa tiệc gia đình, ai cũng khen ngon!"</p>
                        <span>- Anh Minh, Đà Nẵng</span>
                    </div>
                    <div class="testimonial">
                        <p>"Dịch vụ chăm sóc khách hàng rất tận tình, sẽ ủng hộ dài lâu."</p>
                        <span>- Cô Hạnh, Hà Nội</span>
                    </div>
                </div>
            </section>

        <section class="faq">
                <h2>Câu Hỏi Thường Gặp</h2>
                <div class="faq-item">
                    <h4>❓ Tôi có thể đặt hàng như thế nào?</h4>
                    <p>Bạn có thể đặt hàng trực tiếp trên website hoặc gọi hotline 1900 1234.</p>
                </div>
                <div class="faq-item">
                    <h4>❓ Hải sản có được bảo quản lạnh không?</h4>
                    <p>Có, tất cả sản phẩm đều được bảo quản lạnh trong suốt quá trình vận chuyển.</p>
                </div>
                <div class="faq-item">
                    <h4>❓ Tôi có thể đổi trả nếu sản phẩm không đạt?</h4>
                    <p>Chúng tôi hỗ trợ đổi trả trong vòng 24h nếu sản phẩm không đúng cam kết.</p>
                </div>
            </section>
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
                            <li><a href="about.jsp">Về Biển Xanh</a></li>
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

    </html>