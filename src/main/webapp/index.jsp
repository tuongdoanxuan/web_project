<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
            <a href="index.html" class="logo">
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
                <a href="index.html">Trang chủ</a>
                <a href="about.jsp">Giới thiệu</a>
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

<main>
    <section class="hero">
        <h1>Hải Sản Tươi - Chất Lượng Từ Biển Cả</h1>
        <p>Biển Xanh mang đến cho bạn nguồn hải sản tươi ngon, sạch và được kiểm định an toàn.</p>
        <a href="products.jsp" class="btn">Khám phá ngay</a>
    </section>


    <section class="promo-gallery">
        <h2>Ưu Đãi Hải Sản</h2>
        <div class="gallery-wrapper">
            <div class="main-gallery">
                <div class="main-image" aria-live="polite">
                    <img src="assets/img/promo1.png" alt="Cua Lông HongKong Sống - 1" class="active" />
                    <img src="assets/img/promo4.png" alt="Cua Lông HongKong Sống - 2" />
                    <img src="assets/img/promo5.jpg" alt="Cua Lông HongKong Sống - 2" />

                    <button class="nav-btn prev" aria-label="Previous slide"><i class="fas fa-chevron-left"></i></button>
                    <button class="nav-btn next" aria-label="Next slide"><i class="fas fa-chevron-right"></i></button>

                    <div class="image-indicator" role="tablist">
                        <span class="dot active" data-index="0" role="tab" aria-selected="true"></span>
                        <span class="dot" data-index="1" role="tab" aria-selected="false"></span>
                        <span class="dot" data-index="1" role="tab" aria-selected="false"></span>
                    </div>
                </div>
            </div>

            <div class="side-images">
                <div class="side-item">
                    <div class="shine-effect">
                    <img src="assets/img/promo2.jpg" alt="Cua Lông HongKong Sống" />
                    </div>
                </div>
                <div class="side-item">
                    <div class="shine-effect">
                    <img src="assets/img/promo3.jpg" alt="Cua Lông HongKong Sống" />
                    </div>
                </div>
            </div>
        </div>
    </section>


        <section class="featured">
            <h2>🌟 Sản Phẩm Nổi Bật</h2>
            <div class="product-list">
                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/1_4db0f64df6f74ea8a56ad987529d111a_1024x1024.png"
                        alt="Cua Lông HongKong Sống" />
                    <h3>Cua Lông HongKong</h3>
                    <p class="price">169.000VNĐ</p>
                    <p class="weight">200g ± 50g/con</p>
                    <p class="popularity">Đã bán: 752 lượt</p>
                    <span class="tag">ĐANG HOT</span>

                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">4.0/5</span>
                    </div>

                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/477948348_1190637522425552_177211489737856766_n__4__f02033c0a25b41d3a29864a212da8cc8_1024x1024.png"
                         alt="Tôm Hùm Alaska Sống" />
                    <h3>Tôm Hùm Alaska Sống</h3>
                    <p class="price">1.290.000VNĐ</p>
                    <p class="weight">800g ± 100g/con</p>
                    <p class="popularity">Đã bán: 320 lượt</p>
                    <span class="tag">BEST SELLER</span>

                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <span class="rating-score">5.0/5</span>
                    </div>

                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
                <div class="product-card">
                    <img src="data:image/jpeg;base64,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"
                         alt="Cá Hồi Na Uy Tươi" />
                    <h3>Cá Hồi Na Uy Tươi</h3>
                    <p class="price">450.000VNĐ</p>
                    <p class="weight">500g ± 50g/miếng</p>
                    <p class="popularity">Đã bán: 1.025 lượt</p>
                    <span class="tag">ĐANG HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/fc4547b65fe18ebfd7f053_ac04200c507c46928cd4c4f410733b9c_grande.png"
                         alt="Nghêu Sữa Tươi" />
                    <h3>Nghêu Sữa Tươi</h3>
                    <p class="price">95.000VNĐ</p>
                    <p class="weight">1kg/túi</p>
                    <p class="popularity">Đã bán: 560 lượt</p>
                    <span class="tag">GIÁ TỐT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">4.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>
                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/sodiepphomainuong_225bb07c63cf408c9cca421e14ee56f5_grande.png"
                         alt="Sò Điệp Nhật Tươi" />
                    <h3>Sò Điệp Nhật Tươi</h3>
                    <p class="price">320.000VNĐ</p>
                    <p class="weight">500g ± 50g/hộp</p>
                    <p class="popularity">Đã bán: 210 lượt</p>
                    <span class="tag">ĐANG HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/06_90eb13f0ca554508b45f7477bcc73032_grande.jpg"
                         alt="Mực Ống Tươi" />
                    <h3>Mực Ống Tươi</h3>
                    <p class="price">180.000VNĐ</p>
                    <p class="weight">1kg/túi</p>
                    <p class="popularity">Đã bán: 640 lượt</p>
                    <span class="tag">GIÁ TỐT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">4.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/td4_4205d643172443b99e3669153adea192_grande.png"
                         alt="Cá Ngừ Đại Dương" />
                    <h3>Cá Ngừ Đại Dương</h3>
                    <p class="price">220.000VNĐ</p>
                    <p class="weight">1kg/miếng</p>
                    <p class="popularity">Đã bán: 430 lượt</p>
                    <span class="tag">BEST SELLER</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/cua_gach-01_a76583ad7f5740f6a0e6747e3c045395_large_aaf8c0b5b0fb489d8576e810566382cd_grande.png"
                         alt="Cua Biển Tươi" />
                    <h3>Cua Biển Tươi</h3>
                    <p class="price">350.000VNĐ</p>
                    <p class="weight">500g ± 50g/con</p>
                    <p class="popularity">Đã bán: 780 lượt</p>
                    <span class="tag">ĐANG HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <span class="rating-score">5.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/z5023776051884_16ba02a3d1aa8d2df034681c2d33bc7e_4cfe12624ea84ae09bcaa1c7435f2ddc_grande.jpg"
                         alt="Tôm Sú Tươi" />
                    <h3>Tôm Sú Tươi</h3>
                    <p class="price">260.000VNĐ</p>
                    <p class="weight">1kg/túi</p>
                    <p class="popularity">Đã bán: 1.120 lượt</p>
                    <span class="tag">BEST SELLER</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">4.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/hinh_4__53b2379cbc0b4e2a8c009e24f65a9bc0_grande.png"
                         alt="Hàu Sữa Tươi" />
                    <h3>Hàu Sữa Tươi</h3>
                    <p class="price">120.000VNĐ</p>
                    <p class="weight">1kg/túi</p>
                    <p class="popularity">Đã bán: 890 lượt</p>
                    <span class="tag">ĐANG HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.0/5</span>
                    </div>
                    <div class="cart-but" title="Thêm vào giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>
                </div>

                <!-- Thêm sản phẩm khác -->
            </div>
        </section>

        <section class="hot-sale">
            <h2>Sản Phẩm Hot</h2>
            <div class="hot-sale-banner">
                <img src="https://product.hstatic.net/1000030244/product/01_2fa05bec14b94c5db4ed5fb9cdfbdc8d_grande.png"
                    alt="Bào Ngư Hàn Quốc" />
                <div class="hot-sale-info">
                    <h3>Bào Ngư Hàn Quốc</h3>
                    <p class="original-price">Giá gốc: 1.500.000đ/kg</p>
                    <p class="sale-price">Chỉ còn <strong>890.000đ/kg</strong></p>
                    <a href="#" class="btn-buy">Mua Ngay</a>
                </div>
                <span class="hot-label">🔥 HOT SALE</span>
            </div>
        </section>

        <section class="promotion">
            <h2>🎁 Khuyến Mại Hot</h2>
            <div class="product-list">
                <div class="product-card">
                    <img src="https://images.pexels.com/photos/30159728/pexels-photo-30159728.jpeg" alt="Combo Mực Nướng + Nước Chấm Tỏi Nướng">
                    <h3>Combo Mực Ống Nướng + Nước Chấm Tỏi Nướng</h3>
                    <p class="price">289.000 VNĐ</p>
                    <p class="weight">500 g mực + 1 chai nước chấm</p>
                    <p class="popularity">Đã bán: 1.020 lượt</p>
                    <span class="tag">HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.7/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://images.pexels.com/photos/31302693/pexels-photo-31302693.jpeg" alt="Combo Hải Sản Trên Đá + Muối Ớt Chanh">
                    <h3>Combo Hải Sản Trên Đá + Muối Ớt Chanh</h3>
                    <p class="price">349.000 VNĐ</p>
                    <p class="weight">Tôm – Cá – Mực (khoảng 600 g) + muối ớt chanh</p>
                    <p class="popularity">Đã bán: 850 lượt</p>
                    <span class="tag">COMBO ĐẶC BIỆT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.9/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/9_1d841d161df140c8af3e7729b68a3a02_grande.png" alt="Combo Cá Hồi & Sò Điệp Sashimi">
                    <h3>Combo Cá Hồi & Sò Điệp Sashimi</h3>
                    <p class="price">429.000 VNĐ</p>
                    <p class="weight">200 g cá hồi + 12 sò điệp</p>
                    <p class="popularity">Đã bán: 560 lượt</p>
                    <span class="tag">TƯƠI SỐNG</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">4.2/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://images.pexels.com/photos/30159728/pexels-photo-30159728.jpeg" alt="Combo Mực + Chả Mực + Sốt Me">
                    <h3>Combo Mực Ống + Chả Mực + Sốt Me</h3>
                    <p class="price">319.000 VNĐ</p>
                    <p class="weight">400 g mực + 200 g chả + chai sốt me</p>
                    <p class="popularity">Đã bán: 720 lượt</p>
                    <span class="tag">YÊU THÍCH</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.4/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/y3_sot_2833576731d049028df19da10633fb41_grande.png" alt="Combo Tôm Sú + Muối Tiêu Xanh">
                    <h3>Combo Cua + Muối Tiêu Xanh</h3>
                    <p class="price">379.000 VNĐ</p>
                    <p class="weight">500 g tôm sú + hũ muối tiêu</p>
                    <p class="popularity">Đã bán: 940 lượt</p>
                    <span class="tag">ƯU ĐÃI</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.6/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/fc4547b65fe18ebfd7f053_ac04200c507c46928cd4c4f410733b9c_grande.png" alt="Combo Nghêu Trắng + Sốt Tỏi Chanh">
                    <h3>Combo Nghêu Trắng + Sốt Tỏi Chanh</h3>
                    <p class="price">269.000 VNĐ</p>
                    <p class="weight">1kg nghêu + chai sốt</p>
                    <p class="popularity">Đã bán: 810 lượt</p>
                    <span class="tag">GIÁ TỐT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.3/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/tc3__2__3208452161c743fc8280c55628b42e84_grande.png" alt="Combo Lẩu Hải Sản + Nước Lẩu Thái Đặc Biệt">
                    <h3>Combo Lẩu Hải Sản + Nước Lẩu Thái Đặc Biệt</h3>
                    <p class="price">499.000 VNĐ</p>
                    <p class="weight">Cho 3-4 người</p>
                    <p class="popularity">Đã bán: 1.400 lượt</p>
                    <span class="tag">COMBO HOT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.8/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/tom-hum-dat_1_2dac1eb7b88f43139735a0e2b0c9dedf_grande.png" alt="Combo Tôm Tích + Sốt Me Chua Ngọt">
                    <h3>Combo Tôm Tích + Sốt Me Chua Ngọt</h3>
                    <p class="price">339.000 VNĐ</p>
                    <p class="weight">500 g tôm tích + 1 chai sốt me</p>
                    <p class="popularity">Đã bán: 670 lượt</p>
                    <span class="tag">PREMIUM</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.4/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://product.hstatic.net/1000030244/product/sodiepphomainuong_225bb07c63cf408c9cca421e14ee56f5_grande.png" alt="Combo Sò Điệp Nướng + Hành Phi + Sốt Bơ">
                    <h3>Combo Sò Điệp Nướng + Hành Phi + Sốt Bơ</h3>
                    <p class="price">379.000 VNĐ</p>
                    <p class="weight">12 con sò + phụ liệu</p>
                    <p class="popularity">Đã bán: 920 lượt</p>
                    <span class="tag">KHÓ QUÊN</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.5/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>

                <div class="product-card">
                    <img src="https://cdn.hstatic.net/products/1000030244/avatacathu_a32a441956a44425a25c63c3a8912b39_grande.png" alt="Combo Cá Thu Một Nắng + Mắm Tỏi Ớt">
                    <h3>Combo Cá Thu Một Nắng + Mắm Tỏi Ớt</h3>
                    <p class="price">299.000 VNĐ</p>
                    <p class="weight">500 g cá + chai mắm tỏi ớt</p>
                    <p class="popularity">Đã bán: 780 lượt</p>
                    <span class="tag">ĐẶC BIỆT</span>
                    <div class="rating">
                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                        <i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i><i class="fa-regular fa-star"></i>
                        <span class="rating-score">3.2/5</span>
                    </div>
                    <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
                </div>


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