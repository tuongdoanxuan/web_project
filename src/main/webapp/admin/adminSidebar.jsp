<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<aside class="admin-sidebar">
    <h2 class="logo">Biển Xanh Admin</h2>
    <ul class="admin-menu">
        <li><a href="${contextPath}/admin" class="active"><i class="fa-solid fa-chart-line"></i> Tổng quan</a></li>
        <li><a href="${contextPath}/list-product"><i class="fa-solid fa-boxes-stacked"></i> Sản phẩm</a></li>
        <li><a href="${contextPath}/admin/orders"><i class="fa-solid fa-receipt"></i> Đơn hàng</a></li>
        <li><a href="${contextPath}/admin/users"><i class="fa-solid fa-users"></i> Người dùng</a></li>
        <li><a href="${contextPath}/admin/comment"><i class="fa-solid fa-comments"></i> Đánh giá của khách hàng</a></li>
        <li><a href="${contextPath}/admin/changePassword"><i class="fa-solid fa-key"></i> Đổi mật khẩu</a></li>
        <li><a href="${contextPath}/admin/manageAdmin"><i class="fa-solid fa-user-shield"></i> Phân quyền</a></li>
        <li><a href="${contextPath}/index_showLogin.jsp"><i class="fa-solid fa-right-from-bracket"></i> Thoát admin</a></li>
    </ul>
</aside>