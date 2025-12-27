<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<main>

    <!-- CATEGORY -->
    <nav class="category-nav">
        <ul>
            <li>
                <a class="product-filter active"
                   href="${pageContext.request.contextPath}/list-product">
                    Tất cả
                </a>
            </li>
            <li><a href="${pageContext.request.contextPath}/list-product?keyword=cá">Cá</a></li>
            <li><a href="${pageContext.request.contextPath}/list-product?keyword=cua">Cua</a></li>
            <li><a href="${pageContext.request.contextPath}/list-product?keyword=ghẹ">Ghẹ</a></li>
            <li><a href="${pageContext.request.contextPath}/list-product?keyword=sò">Sò</a></li>
            <li><a href="${pageContext.request.contextPath}/list-product?keyword=ốc">Ốc</a></li>
        </ul>
    </nav>
    <div class="sort-wrapper-right">
        <form method="get" action="${pageContext.request.contextPath}/list-product">
            <!-- giữ keyword khi sort -->
            <c:if test="${not empty param.keyword}">
                <input type="hidden" name="keyword" value="${param.keyword}">
            </c:if>

            <div class="sort-bar">
                <label for="sort">
                    <i class="fa-solid fa-sort"></i> Sắp xếp theo:
                </label>
                <select id="sort" name="sort" onchange="this.form.submit()">
                    <option value="default"
                    ${param.sort == 'default' || empty param.sort ? 'selected' : ''}>
                        Ngẫu nhiên
                    </option>
                    <option value="rating"
                    ${param.sort == 'rating' ? 'selected' : ''}>
                        Đánh giá
                    </option>
                    <option value="price-asc"
                    ${param.sort == 'price-asc' ? 'selected' : ''}>
                        Giá tăng dần
                    </option>
                    <option value="price-desc"
                    ${param.sort == 'price-desc' ? 'selected' : ''}>
                        Giá giảm dần
                    </option>
                </select>
            </div>
        </form>
    </div>

    <h2 style="text-align:center; margin:20px 0;">Tất cả sản phẩm</h2>

    <!-- PRODUCT LIST -->
    <div class="product-list">

        <c:if test="${empty productList}">
            <p style="text-align:center">Không có sản phẩm nào</p>
        </c:if>

        <c:forEach var="p" items="${productList}">
            <a href="${pageContext.request.contextPath}/product-detail?id=${p.id}">

                <div class="product-card">

                    <img src="${pageContext.request.contextPath}/assets/img/${p.tag}.jpg"
                         alt="${p.productName}">

                    <h3>${p.productName}</h3>
                    <p class="price">${p.price} VNĐ</p>
                    <p class="weight">${p.weight} kg</p>
                    <p class="popularity">Đã bán: ${p.sold}</p>

                    <c:if test="${p.rating >= 4}">
                        <span class="tag">HOT</span>
                    </c:if>

                    <div class="rating">
                        ⭐ ${p.rating}/5
                    </div>

                    <div class="cart-but">
                        <i class="fa-solid fa-cart-shopping"></i>
                    </div>

                </div>

            </a>
        </c:forEach>

    </div>

</main>
