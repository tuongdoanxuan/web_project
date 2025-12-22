<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<section class="hero">
    <h1>Hải Sản Tươi - Chất Lượng Từ Biển Cả</h1>
    <p>Biển Xanh mang đến cho bạn nguồn hải sản tươi ngon, sạch và được kiểm định an toàn.</p>
    <a href="${pageContext.request.contextPath}/list-product" class="btn">Khám phá ngay</a>
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

        <c:if test="${empty featuredList}">
        <p>Không có sản phẩm</p>
        </c:if>

        <c:forEach var="p" items="${featuredList}">

            <a href="${pageContext.request.contextPath}/product-detail?id=${p.id}">

            <div class="product-card">

                    <img src="${pageContext.request.contextPath}/assets/img/${p.tag}.jpg"
                         alt="${p.productName}" />

                    <h3>${p.productName}</h3>

                    <p class="price">
                        <fmt:formatNumber value="${p.price}" type="number"/> đ
                    </p>

                    <p class="weight">Trọng lượng: ${p.weight} kg</p>
                    <p class="popularity">Đã bán: ${p.sold}</p>

                    <span class="tag">${p.tag}</span>

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
        </c:forEach>

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

        <c:if test="${empty promotionList}">
        <p>Không có sản phẩm</p>
        </c:if>

        <c:forEach var="p" items="${promotionList}">

            <a href="${pageContext.request.contextPath}/product-detail?id=${p.id}">


                <div class="product-card">

                    <img src="${pageContext.request.contextPath}/assets/img/${p.tag}.jpg"
                         alt="${p.productName}" />

                    <h3>${p.productName}</h3>

                    <p class="price">
                        <fmt:formatNumber value="${p.price}" type="number"/> đ
                    </p>

                    <p class="weight">Trọng lượng: ${p.weight} kg</p>
                    <p class="popularity">Đã bán: ${p.sold}</p>

                    <span class="tag">${p.tag}</span>

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