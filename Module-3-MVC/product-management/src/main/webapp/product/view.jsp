<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 28/05/2025
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean id="product" type="com.example.productmanagement.model.Product" scope="request"/>
<html>
<head>
    <title>Chi tiết sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<div class="container">
    <h2>Chi tiết sản phẩm</h2>
    <div class="product-detail">
        <p><strong>ID:</strong> ${product.id}</p>
        <p><strong>Tên sản phẩm:</strong> ${product.name}</p>
        <p><strong>Giá:</strong> ${product.price} VNĐ</p>
        <p><strong>Mô tả:</strong> ${product.description}</p>
        <p><strong>Nhà sản xuất:</strong> ${product.manufacturer}</p>
    </div>
    <a class="btn btn-primary" href="products">Quay lại danh sách</a>
</div>
</body>
</html>

