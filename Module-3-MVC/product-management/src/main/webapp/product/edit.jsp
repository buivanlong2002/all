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
  <title>Cập nhật sản phẩm</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<div class="container">
  <h2>Cập nhật sản phẩm</h2>
  <form action="products" method="post" class="form">
    <input type="hidden" name="action" value="update" />
    <input type="hidden" name="id" value="${product.id}" />

    <label for="name">Tên sản phẩm:</label>
    <input type="text" id="name" name="name" value="${product.name}" required />

    <label for="price">Giá sản phẩm (VNĐ):</label>
    <input type="number" id="price" name="price" value="${product.price}" min="0" step="1000" required />

    <label for="description">Mô tả:</label>
    <textarea id="description" name="description" rows="3">${product.description}</textarea>

    <label for="manufacturer">Nhà sản xuất:</label>
    <input type="text" id="manufacturer" name="manufacturer" value="${product.manufacturer}" />

    <button type="submit">Cập nhật</button>
    <a class="btn btn-cancel" href="products">Hủy</a>
  </form>
</div>
</body>
</html>


