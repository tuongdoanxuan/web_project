<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hải Sản Biển Xanh</title>
    <link rel="icon" href="https://copilot.microsoft.com/th/id/BCO.46901ef9-0615-4efe-929b-4c6ad9f61546.png" type="image/jpeg" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/cart.css" />
    <link rel="stylesheet" href="css/products.css">
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
                <a href="index_noLogin.jsp">Trang chủ</a>
                <a href="about_noLogin.jsp">Giới thiệu</a>
                <a href="products_noLogin.jsp">Sản phẩm</a>
                <a href="index_showLogin.jsp">Điểm thưởng</a>

                <!-- Notifications -->
                <div class="notification-wrapper">
                    <div class="notification-icon" title="Thông báo">
                        <i class="fa-solid fa-bell"></i>
                    </div>
                    <div class="notification-dropdown">
                    </div>
                </div>

                <!-- User Menu -->
                <div class="user-menu">
                    <a href="index_showLogin.jsp">Đăng nhập</a>
                    <div class="separate"></div>
                    <a href="index_showRegister.jsp">Đăng ký</a>
                </div>

                <!-- Cart -->
                <div class="cart-hover-area">
                    <div class="cart-icon">
                        <a class="nav-link" href="index_showLogin.jsp"></a>
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>

<nav class="category-nav">
    <ul>
        <li><a class="product-filter" href="products_noLogin.jsp">Tất cả</a></li>
        <li><a class="product-filter" href="productsFilter_Cua_noLogin.jsp">Cua</a></li>
        <li><a class="product-filter" href="productsFilter_Ca_noLogin.jsp">Cá</a></li>
        <li><a class="product-filter" href="productsFilter_Ghe_noLogin.jsp">Ghẹ</a></li>
        <li><a class="product-filter" href="productsFilter_Oc_noLogin.jsp">Ốc</a></li>
        <li><a class="product-filter active" href="productsFilter_So_noLogin.html">Sò</a></li>
    </ul>
</nav>

<div class="sort-wrapper-right">
    <div class="sort-bar">
        <label for="sort">
            <i class="fa-solid fa-sort"></i> Sắp xếp theo:
        </label>
        <select id="sort" name="sort">
            <option value="default">Ngẫu nhiên</option>
            <option value="rating-asc">Đánh giá</option>
            <option value="price-asc">Giá tăng dần</option>
            <option value="price-desc">Giá giảm dần</option>
        </select>
    </div>
</div>
<h2 style="text-align:center; margin-top:20px;">Sản phẩm thuộc danh mục Sò</h2>

<div class="product-list">
    <div class="product-card">
        <img src="https://product.hstatic.net/1000182631/product/so_diep_nhat_1_e743a1424ace4e04b0ef6a6b2e722806_medium.jpeg" alt="Sò Điệp Nhật" />
        <h3>Sò Điệp Nhật</h3>
        <p class="price">259.000 VNĐ</p>
        <p class="weight">500g/hộp</p>
        <p class="popularity">Đã bán: 644 lượt</p>
        <div class="rating">
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <span class="rating-score">3.7/5</span>
        </div>
        <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
    </div>

    <div class="product-card">
        <img src="https://product.hstatic.net/1000182631/product/z3257458082276_297584c11ddd0915aa0330224402ca46_882dbc425ba24cea8fb9671ced4592a4_medium.jpg" alt="Sò Lại" />
        <h3>Sò Lại</h3>
        <p class="price">199.000 VNĐ</p>
        <p class="weight">500g/hộp</p>
        <p class="popularity">Đã bán: 523 lượt</p>
        <div class="rating">
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
            <i class="fa-regular fa-star"></i>
            <span class="rating-score">3.8/5</span>
        </div>
        <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
    </div>

    <div class="product-card">
        <img src="https://product.hstatic.net/1000182631/product/117712441_2726060257660333_2070474755663957313_n_bb71561e7d934bda8e71d5eda52b70de_medium.jpg" alt="Sò Trắng" />
        <h3>Sò Trắng</h3>
        <p class="price">179.000 VNĐ</p>
        <p class="weight">400g/hộp</p>
        <p class="popularity">Đã bán: 488 lượt</p>
        <div class="rating">
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <span class="rating-score">3.6/5</span>
        </div>
        <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
    </div>

    <div class="product-card">
        <img src="https://product.hstatic.net/1000182631/product/117712441_2726060257660333_2070474755663957313_n_bb71561e7d934bda8e71d5eda52b70de_medium.jpg" alt="Sò Vàng" />
        <h3>Sò Vàng</h3>
        <p class="price">209.000 VNĐ</p>
        <p class="weight">500g/hộp</p>
        <p class="popularity">Đã bán: 532 lượt</p>
        <div class="rating">
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
            <i class="fa-regular fa-star"></i>
            <span class="rating-score">3.9/5</span>
        </div>
        <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
    </div>

    <!-- Thêm sản phẩm Ốc khác -->
</div>


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