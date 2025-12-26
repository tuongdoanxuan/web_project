<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="auth-form forgot-form">
    <div class="auth-form__container">
        <div class="auth-form__header">
            <h3 class="auth-form__heading">Quên mật khẩu</h3>
            <span class="auth-form__switch-btn" onclick="switchToLogin()">Đăng nhập</span>
        </div>
        
        <c:if test="${param.error == 'notFound'}">
            <div class="auth-form__error">Email không tồn tại trong hệ thống</div>
        </c:if>
        <c:if test="${param.error == 'empty'}">
            <div class="auth-form__error">Vui lòng nhập email</div>
        </c:if>
        <c:if test="${param.error == 'invalidEmail'}">
            <div class="auth-form__error">Email không hợp lệ</div>
        </c:if>
        <c:if test="${param.error == 'failed'}">
            <div class="auth-form__error">Không thể đặt lại mật khẩu. Vui lòng thử lại sau.</div>
        </c:if>
        <c:if test="${param.error == 'csrf'}">
            <div class="auth-form__error">Phiên làm việc hết hạn, vui lòng thử lại</div>
        </c:if>
        
        <form class="auth-form__form" action="${contextPath}/forgot-password" method="POST">
            <input type="hidden" name="csrfToken" value="${sessionScope.csrfToken}" />
            
            <div class="auth-form__group">
                <label for="forgotEmail">Email</label>
                <input type="email" 
                       id="forgotEmail" 
                       name="email" 
                       class="auth-form__input" 
                       placeholder="Nhập email để khôi phục" 
                       required 
                       autofocus />
            </div>
            
            <div class="auth-form__aside">
                <p class="auth-form__policy-text">
                    Chúng tôi sẽ tạo mật khẩu tạm thời mới cho bạn. 
                    Mật khẩu sẽ được hiển thị trong console (chế độ phát triển).
                    Trong tương lai, mật khẩu sẽ được gửi qua email.
                </p>
            </div>
            
            <div class="auth-form__controls">
                <button type="button" class="btn--normal" onclick="closeModal()">TRỞ LẠI</button>
                <button type="submit" class="btn--primary">GỬI YÊU CẦU</button>
            </div>
        </form>
    </div>
</div>
