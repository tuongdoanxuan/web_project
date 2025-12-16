<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                <form action="/search" method="post">
                    <input type="text" name = "query" placeholder="Tìm kiếm hải sản...">

                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>

            <!-- Navigation -->
            <nav>
                <a href="index.jsp">Trang chủ</a>
                <a href="about.jsp">Giới thiệu</a>
                <a href="products.html">Sản phẩm</a>
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
      
      <nav class="category-nav">
        <ul>
          <li><a class="product-filter active" href="products.html">Tất cả</a></li>
          <li><a class="product-filter" href="productsFilter_Cua.jsp">Cua</a></li>
          <li><a class="product-filter" href="productsFilter_Ca.jsp">Cá</a></li>
          <li><a class="product-filter" href="productsFilter_Ghe.jsp">Ghẹ</a></li>
          <li><a class="product-filter" href="productsFilter_Oc.jsp">Ốc</a></li>
          <li><a class="product-filter" href="productsFilter_So.jsp">Sò</a></li>
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
        <h2 style="text-align:center; margin-top:20px;">Tất cả sản phẩm</h2>
      <div class="product-list" id="product-list">
        <!-- Các sản phẩm sẽ được render ở đây -->
          <!-- 1 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/1_4db0f64df6f74ea8a56ad987529d111a_grande.png"
                   alt="Cua Lông HongKong Sống" />
              <h3>Cua Lông HongKong</h3>
              <p class="price">169.000 VNĐ</p>
              <p class="weight">200g ± 50g/con</p>
              <p class="popularity">Đã bán: 752 lượt</p>
              <span class="tag">ĐANG HOT</span>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">4.0/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 2 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/td6_098b2474b46d40069d1c2cc6449a5e59_grande.png"
                   alt="Tôm Sú Tươi Cỡ Lớn" />
              <h3>Tôm Sú Tươi Cỡ Lớn</h3>
              <p class="price">299.000 VNĐ</p>
              <p class="weight">500g/khay (8–10 con)</p>
              <p class="popularity">Đã bán: 1.024 lượt</p>
              <span class="tag">BÁN CHẠY</span>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.8/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 3 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/31_ce5e876aa9064aab94986118f686d69a_grande.png"
                   alt="Mực Ống Tươi" />
              <h3>Mực Ống Tươi</h3>
              <p class="price">235.000 VNĐ</p>
              <p class="weight">500g/khay</p>
              <p class="popularity">Đã bán: 890 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.5/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 4 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/thit-ngheu-tuoi-truoc_13d3639db84f460f8635481f38151617_grande.png"
                   alt="Nghêu Trắng Loại 1" />
              <h3>Nghêu Trắng Loại 1</h3>
              <p class="price">89.000 VNĐ</p>
              <p class="weight">1kg/túi</p>
              <p class="popularity">Đã bán: 1.542 lượt</p>
              <span class="tag">GIÁ TỐT</span>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.9/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 5 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/hinh_4__53b2379cbc0b4e2a8c009e24f65a9bc0_grande.png"
                   alt="Hàu Sữa Pháp" />
              <h3>Hàu Sữa Pháp</h3>
              <p class="price">129.000 VNĐ</p>
              <p class="weight">12 con/hộp</p>
              <p class="popularity">Đã bán: 932 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.6/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 6 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/screenshot_2023-06-01_152542_dca172da86764686951ba399575e8bbf_grande.png"
                   alt="Cá Hồi Fillet" />
              <h3>Cá Hồi Fillet</h3>
              <p class="price">189.000 VNĐ</p>
              <p class="weight">300g/miếng</p>
              <p class="popularity">Đã bán: 1.332 lượt</p>
              <span class="tag">GIÀU OMEGA-3</span>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">4.1/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 7 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/tom_the_avatar_42e7cacdeeb64f0d8e00b02901cac1a2_grande.png"
                   alt="Tôm Thẻ Tươi" />
              <h3>Tôm Thẻ Tươi</h3>
              <p class="price">159.000 VNĐ</p>
              <p class="weight">500g (25–30 con)</p>
              <p class="popularity">Đã bán: 2.024 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.7/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 8 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/screenshot_2025-07-21_131530_b44afab7039e4adba9caa0be712ca92d_grande.png"
                   alt="Cá Basa Phi Lê" />
              <h3>Cá Basa Phi Lê</h3>
              <p class="price">79.000 VNĐ</p>
              <p class="weight">500g/gói</p>
              <p class="popularity">Đã bán: 1.552 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.9/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 9 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/2_b921b3743ec646ed8a6b08712adee1e1_grande.png"
                   alt="Mực Lá Cắt Khoanh" />
              <h3>Mực Lá Cắt Khoanh</h3>
              <p class="price">249.000 VNĐ</p>
              <p class="weight">500g/khay</p>
              <p class="popularity">Đã bán: 684 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.5/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 10 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/so_huyet_co_587441283cea427cb4c8ca78ab79c02f_grande.jpg"
                   alt="Sò Huyết Loại Lớn" />
              <h3>Sò Huyết Loại Lớn</h3>
              <p class="price">155.000 VNĐ</p>
              <p class="weight">1kg</p>
              <p class="popularity">Đã bán: 1.242 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.9/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 11 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/ch1_98d2415716604b288552cf690861a56c_1024x1024.png"
                   alt="Sashimi Cá Hồi" />
              <h3>Sashimi Cá Hồi</h3>
              <p class="price">219.000 VNĐ</p>
              <p class="weight">200g/hộp</p>
              <p class="popularity">Đã bán: 1.842 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">4.2/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 12 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/untitled-5-03_e911a9c112fa44f9848a965d3c570cf4_grande.png"
                   alt="Cá Trích Nauy" />
              <h3>Cá Trích Nauy</h3>
              <p class="price">139.000 VNĐ</p>
              <p class="weight">500g</p>
              <p class="popularity">Đã bán: 552 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.6/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 13 -->
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/matcanguweb_01bb43f395d74c5f8eabe334b5aacaca_grande.png"
                   alt="Cá Ngừ Cắt Khoanh" />
              <h3>Mắt Cá Ngừ Cắt Khoanh</h3>
              <p class="price">165.000 VNĐ</p>
              <p class="weight">500g</p>
              <p class="popularity">Đã bán: 712 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.8/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 14 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/tom-cang-xanh_2de015440edc4ddea5460b3e7883041f_grande.jpg"
                   alt="Tôm Càng Xanh" />
              <h3>Tôm Càng Xanh</h3>
              <p class="price">329.000 VNĐ</p>
              <p class="weight">500g (6–8 con)</p>
              <p class="popularity">Đã bán: 1.122 lượt</p>
              <span class="tag">CAO CẤP</span>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-regular fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.7/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

          <!-- 15 -->
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/untitled-5-03_2259fdd99b3a4341ade7af7bf8651046_grande.png"
                   alt="Sò Điệp Nhật" />
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
              <img src="https://cdn.hstatic.net/products/1000030244/bachtuotweb_93daaaff296d4fdfbe07abc74cbc7150_grande.png"
                   alt="Bạch Tuộc Baby Hàn Quốc" />
              <h3>Bạch Tuộc Baby Nhật</h3>
              <p class="price">189.000 VNĐ</p>
              <p class="weight">500g/khay</p>
              <p class="popularity">Đã bán: 842 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.8/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>
          <div class="product-card">
              <img src="https://cdn.hstatic.net/products/1000030244/cachivangwweb_405a63e48f524f86b88693dba5aa279c_grande.png"
                   alt="Cá Chỉ Vàng Hai Nắng" />
              <h3>Cá Chỉ Vàng Một Nắng</h3>
              <p class="price">155.000 VNĐ</p>
              <p class="weight">500g/gói</p>
              <p class="popularity">Đã bán: 1.215 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">4.0/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>
          <div class="product-card">
              <img src="https://product.hstatic.net/1000030244/product/600g_13_11_dfaafdf9ff9f4948a5ca9aa23d68e79b_grande.png"
                   alt="Tôm Hùm Baby Đông Lạnh" />
              <h3>Tôm Hùm Baby Đông Lạnh</h3>
              <p class="price">289.000 VNĐ</p>
              <p class="weight">300–350g/con</p>
              <p class="popularity">Đã bán: 577 lượt</p>
              <div class="rating">
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                  <i class="fa-solid fa-star"></i><i class="fa-solid fa-star-half-stroke"></i>
                  <i class="fa-regular fa-star"></i>
                  <span class="rating-score">3.9/5</span>
              </div>
              <div class="cart-but"><i class="fa-solid fa-cart-shopping"></i></div>
          </div>

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