<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="auth-form register-form">
    <div class="auth-form__container">
        <div class="auth-form__header">
            <h3 class="auth-form__heading">Đăng ký</h3>
            <span class="auth-form__switch-btn" onclick="switchToLogin()">Đăng nhập</span>
        </div>
        
        <c:if test="${param.error == 'emailExists'}">
            <div class="auth-form__error">Email đã được đăng ký</div>
        </c:if>
        <c:if test="${param.error == 'passwordMismatch'}">
            <div class="auth-form__error">Mật khẩu không khớp</div>
        </c:if>
        <c:if test="${param.error == 'passwordWeak'}">
            <div class="auth-form__error">Mật khẩu phải có ít nhất 8 ký tự</div>
        </c:if>
        <c:if test="${param.error == 'invalidEmail'}">
            <div class="auth-form__error">Email không hợp lệ</div>
        </c:if>
        <c:if test="${param.error == 'invalidPhone'}">
            <div class="auth-form__error">Số điện thoại không hợp lệ</div>
        </c:if>
        <c:if test="${param.error == 'empty'}">
            <div class="auth-form__error">Vui lòng điền đầy đủ thông tin bắt buộc</div>
        </c:if>
        <c:if test="${param.error == 'failed'}">
            <div class="auth-form__error">Đăng ký thất bại. Vui lòng thử lại sau.</div>
        </c:if>
        <c:if test="${param.error == 'csrf'}">
            <div class="auth-form__error">Phiên làm việc hết hạn, vui lòng thử lại</div>
        </c:if>
        
        <form class="auth-form__form" action="${contextPath}/register" method="POST">
            <input type="hidden" name="csrfToken" value="${sessionScope.csrfToken}" />
            
            <div class="auth-form__group">
                <label for="registerFirstName">Họ *</label>
                <input type="text" 
                       id="registerFirstName" 
                       name="firstName" 
                       class="auth-form__input" 
                       placeholder="Họ của bạn"
                       required 
                       autofocus />
            </div>
            
            <div class="auth-form__group">
                <label for="registerLastName">Tên *</label>
                <input type="text" 
                       id="registerLastName" 
                       name="lastName" 
                       class="auth-form__input" 
                       placeholder="Tên của bạn"
                       required />
            </div>
            
            <div class="auth-form__group">
                <label for="registerEmail">Email *</label>
                <input type="email" 
                       id="registerEmail" 
                       name="email" 
                       class="auth-form__input" 
                       placeholder="Email của bạn" 
                       required />
            </div>
            
            <div class="auth-form__group">
                <label for="registerPhone">Số điện thoại (Tùy chọn)</label>
                <input type="tel" 
                       id="registerPhone" 
                       name="phone" 
                       class="auth-form__input" 
                       placeholder="Số điện thoại (không bắt buộc)"
                       pattern="[0-9]{10,11}"
                       title="Số điện thoại phải có 10 hoặc 11 số" />
            </div>
            
            <div class="auth-form__group">
                <label for="registerPassword">Mật khẩu *</label>
                <input type="password" 
                       id="registerPassword" 
                       name="password" 
                       class="auth-form__input" 
                       placeholder="Mật khẩu (tối thiểu 8 ký tự)" 
                       minlength="8"
                       required />
            </div>
            
            <div class="auth-form__group">
                <label for="registerConfirmPassword">Xác nhận mật khẩu *</label>
                <input type="password" 
                       id="registerConfirmPassword" 
                       name="confirmPassword" 
                       class="auth-form__input" 
                       placeholder="Nhập lại mật khẩu" 
                       minlength="8"
                       required />
            </div>
            
            <div class="auth-form__aside">
                <p class="auth-form__policy-text">
                    Bằng việc đăng ký, bạn đã đồng ý với Biển Xanh về
                    <a href="#" class="auth-form__text-link">Điều khoản dịch vụ</a> &
                    <a href="#" class="auth-form__text-link">Chính sách bảo mật</a>
                </p>
            </div>
            
            <div class="auth-form__controls">
                <button type="button" class="btn--normal" onclick="closeModal()">TRỞ LẠI</button>
                <button type="submit" class="btn--primary">ĐĂNG KÝ</button>
            </div>
        </form>
        
        <div class="auth-form__socials">
            <a href="#" class="auth-form__socials--facebook btn--size-s btn--with-icon">
                <i class="auth-form__socials-icon fa-brands fa-square-facebook"></i>
                <span class="auth-form__socials-title">Kết nối với Facebook</span>
            </a>
            <a href="#" class="auth-form__socials--google btn--size-s btn--with-icon">
                <i class="auth-form__socials-icon fa-brands fa-google"></i>
                <span class="auth-form__socials-title">Kết nối với Google</span>
            </a>
        </div>
    </div>
</div>
