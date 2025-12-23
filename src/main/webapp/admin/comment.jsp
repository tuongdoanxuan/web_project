<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/comment.css">
</head>

<body>
<div class="admin-wrapper">
    <!-- Sidebar -->
    <%@include file="adminSidebar.jsp" %>

    <!-- Nội dung chính -->
    <main class="admin-content">
        <header class="admin-header">
            <h1><i class="fa-solid fa-comments"></i> Đánh giá & phản hồi của khách hàng</h1>
            <p>Danh sách các đánh giá, bình luận và câu hỏi từ khách hàng.</p>
        </header>

        <section class="comment-section">
            <div class="comment-card">
                <h3><i class="fa-solid fa-user"></i> Nguyễn Văn A</h3>
                <p><strong>Loại phản hồi:</strong> Đánh giá chất lượng</p>
                <p><strong>Nội dung:</strong> Hải sản tươi ngon, giao hàng nhanh. Sẽ ủng hộ dài lâu!</p>
                <button class="reply-btn"><i class="fa-solid fa-reply"></i> Phản hồi</button>
            </div>

            <div class="comment-card">
                <h3><i class="fa-solid fa-user"></i> Trần Thị B</h3>
                <p><strong>Loại phản hồi:</strong> Đặt câu hỏi</p>
                <p><strong>Nội dung:</strong> Cá hồi ngâm tương có thể bảo quản được bao lâu?</p>
                <button class="reply-btn"><i class="fa-solid fa-reply"></i> Phản hồi</button>
            </div>

            <div class="comment-card">
                <h3><i class="fa-solid fa-user"></i> Lê Minh C</h3>
                <p><strong>Loại phản hồi:</strong> Góp ý cải tiến</p>
                <p><strong>Nội dung:</strong> Nên có thêm lựa chọn thanh toán qua VNPay QR.</p>
                <button class="reply-btn"><i class="fa-solid fa-reply"></i> Phản hồi</button>
            </div>
        </section>
    </main>

</div>
</body>

</html>