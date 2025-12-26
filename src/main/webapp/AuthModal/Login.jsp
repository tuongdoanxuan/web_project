<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="auth-form login-form">
    <div class="auth-form__container">
        <div class="auth-form__header">
            <h3 class="auth-form__heading">Đăng nhập</h3>
            <span class="auth-form__switch-btn" onclick="switchToRegister()">Đăng ký</span>
        </div>
        
        <c:if test="${param.error == 'invalid'}">
            <div class="auth-form__error">Email hoặc mật khẩu không đúng</div>
        </c:if>
        <c:if test="${param.error == 'empty'}">
            <div class="auth-form__error">Vui lòng điền đầy đủ thông tin</div>
        </c:if>
        <c:if test="${param.error == 'csrf'}">
            <div class="auth-form__error">Phiên làm việc hết hạn, vui lòng thử lại</div>
        </c:if>
        <c:if test="${param.resetSuccess == 'true'}">
            <div class="auth-form__success">Mật khẩu mới đã được gửi! Kiểm tra console để xem mật khẩu tạm thời.</div>
        </c:if>
        <c:if test="${param.error == 'registered'}">
            <div class="auth-form__success">Đăng ký thành công! Vui lòng đăng nhập.</div>
        </c:if>
        
        <form class="auth-form__form" action="${contextPath}/login" method="POST">
            <input type="hidden" name="csrfToken" value="${sessionScope.csrfToken}" />
            <input type="hidden" name="redirect" value="${param.redirect}" />
            
            <div class="auth-form__group">
                <label for="loginEmail">Email</label>
                <input type="email" 
                       id="loginEmail" 
                       name="email" 
                       class="auth-form__input" 
                       placeholder="Email của bạn" 
                       required 
                       autofocus />
            </div>
            
            <div class="auth-form__group">
                <label for="loginPassword">Mật khẩu</label>
                <input type="password" 
                       id="loginPassword" 
                       name="password" 
                       class="auth-form__input" 
                       placeholder="Mật khẩu của bạn" 
                       required />
            </div>
            
            <div class="auth-form__help">
                <a href="#" onclick="switchToForgotPassword(); return false;">Quên mật khẩu</a> | 
                <a href="#">Cần trợ giúp?</a>
            </div>
            
            <div class="auth-form__controls">
                <button type="button" class="btn--normal" onclick="closeModal()">TRỞ LẠI</button>
                <button type="submit" class="btn--primary">ĐĂNG NHẬP</button>
            </div>
        </form>
    </div>
</div>
