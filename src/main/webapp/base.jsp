<%--
  Created by IntelliJ IDEA.
  User: longnguyen
  Date: 16/12/2025
  Time: 9:55 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title><c:out value="${pageTitle}" default="Biển Xanh" /></title>
    <link rel="icon" href="https://copilot.microsoft.com/th/id/BCO.46901ef9-0615-4efe-929b-4c6ad9f61546.png" type="image/jpeg" />
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/cart.css" />
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/products.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>

<main>
    <jsp:include page="${contentPage}" />
</main>

<jsp:include page="footer.jsp"/>


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
