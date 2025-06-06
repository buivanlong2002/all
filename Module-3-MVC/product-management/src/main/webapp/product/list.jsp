<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 28/05/2025
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
<div class="container">
    <h2>Danh sách sản phẩm</h2>

    <div class="toolbar">
        <a class="btn btn-primary" href="products?action=new">Thêm sản phẩm mới</a>
        <form class="search-form" action="products" method="get">
            <input type="text" name="keyword" placeholder="Tìm theo tên..." />
            <input type="hidden" name="action" value="search" />
            <button type="submit">Tìm kiếm</button>
        </form>
    </div>

    <table>
        <thead>
        <tr>
            <th>ID</th><th>Tên</th><th>Giá (VNĐ)</th><th>Nhà sản xuất</th><th>Hành động</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
                <td>${product.manufacturer}</td>
                <td>
                    <a class="btn btn-view" href="products?action=view&id=${product.id}">Xem</a>
                    <a class="btn btn-edit" href="products?action=edit&id=${product.id}">Sửa</a>
                    <a class="btn btn-delete" href="products?action=delete&id=${product.id}" onclick="return confirm('Bạn có chắc muốn xoá sản phẩm này?');">Xoá</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>

