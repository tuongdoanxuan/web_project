<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="adminCommonLinks.jsp"/>
    <link rel="stylesheet" href="${contextPath}/css/admin/usersDetail.css">
</head>

<body>
  <div class="admin-wrapper">
    <!-- Sidebar -->
      <%@include file="adminSidebar.jsp" %>

    <!-- Nội dung chính -->
    <main class="admin-content">
      <header class="admin-header">
        <h1>Chi tiết người dùng</h1>
        <p>Thông tin tài khoản của <strong>Nguyễn Văn A</strong></p>
      </header>

      <section class="user-info">
        <div class="info-box">
          <h3><i class="fa-solid fa-user"></i> Thông tin cá nhân</h3>
          <ul>
            <li><strong>Họ tên:</strong> Nguyễn Văn A</li>
            <li><strong>Email:</strong> nguyena@example.com</li>
            <li><strong>Số điện thoại:</strong> 0901234567</li>
            <li><strong>Địa chỉ:</strong> 123 Đường Biển, TP. Hồ Chí Minh</li>
          </ul>
        </div>

        <div class="info-box">
          <h3><i class="fa-solid fa-user-shield"></i> Thông tin hệ thống</h3>
          <ul>
            <li><strong>Vai trò:</strong> Khách hàng</li>
            <li><strong>Trạng thái:</strong> <span class="status active">Hoạt động</span></li>
            <li><strong>Ngày đăng ký:</strong> 01/11/2025</li>
          </ul>
        </div>
      </section>

      <div class="user-actions">
        <button class="btn-lock"><i class="fa-solid fa-lock"></i> Khóa tài khoản</button>
        <button class="btn-reset"><i class="fa-solid fa-rotate-left"></i> Reset người dùng</button>
        <button class="btn-notify"><i class="fa-solid fa-paper-plane"></i> Gửi thông báo</button>
        <button class="btn-delete"><i class="fa-solid fa-trash"></i> Xóa người dùng</button>
      </div>


    </main>
  </div>
</body>

</html>