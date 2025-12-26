<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="modal" id="authModal">
    <div class="modal__overlay" onclick="closeModal()"></div>
    <div class="modal__body">
        <jsp:include page="Login.jsp"/>
        <jsp:include page="Register.jsp"/>
        <jsp:include page="ForgotPassword.jsp"/>
    </div>
</div>

<script src="${contextPath}/js/authModal.js"></script>
