<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 28/05/2025
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Thêm sản phẩm mới</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<div class="container">
    <h2>Thêm sản phẩm mới</h2>
    <form action="products" method="post" class="form">
        <input type="hidden" name="action" value="create" />

        <label for="name">Tên sản phẩm:</label>
        <input type="text" id="name" name="name" required />

        <label for="price">Giá sản phẩm (VNĐ):</label>
        <input type="number" id="price" name="price" min="0" step="1000" required />

        <label for="description">Mô tả:</label>
        <textarea id="description" name="description" rows="3"></textarea>

        <label for="manufacturer">Nhà sản xuất:</label>
        <input type="text" id="manufacturer" name="manufacturer" />

        <button type="submit">Lưu</button>
        <a class="btn btn-cancel" href="products">Hủy</a>
    </form>
</div>
</body>
</html>


