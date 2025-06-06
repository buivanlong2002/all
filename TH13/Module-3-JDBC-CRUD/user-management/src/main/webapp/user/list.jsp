<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 30/05/2025
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>User Management Application</title>
    <style>
        /* Reset mặc định */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            line-height: 1.6;
            padding: 20px;
        }

        /* Căn giữa nội dung */
        center {
            margin-bottom: 20px;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        h2 a {
            text-decoration: none;
            color: #3498db;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        h2 a:hover {
            color: #2980b9;
        }

        /* Form tìm kiếm */
        .search-form, .sort-form {
            margin: 20px 0;
        }

        .search-form label {
            font-weight: bold;
            margin-right: 10px;
        }

        .search-form input[type="text"] {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            width: 200px;
            transition: border-color 0.3s ease;
        }

        .search-form input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        button {
            padding: 8px 15px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #2980b9;
        }

        /* Bảng */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Liên kết hành động */
        td a {
            text-decoration: none;
            padding: 5px 10px;
            margin: 0 5px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        td a[href*="edit"] {
            background-color: #2ecc71;
            color: white;
        }

        td a[href*="edit"]:hover {
            background-color: #27ae60;
        }

        td a[href*="delete"] {
            background-color: #e74c3c;
            color: white;
        }

        td a[href*="delete"]:hover {
            background-color: #c0392b;
        }

        /* Caption */
        caption {
            padding: 10px;
            font-size: 1.2em;
            color: #2c3e50;
        }
    </style>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>

<!-- Tìm kiếm theo quốc gia -->
<div align="center" class="search-form">
    <form action="users" method="get">
        <label for="country">Search by Country: </label>
        <input type="text" id="country" name="country" placeholder="Enter country"/>
        <button type="submit" name="action" value="search">Search</button>
    </form>
</div>

<!-- Sắp xếp theo tên -->
<div align="center" class="sort-form">
    <form action="users" method="get">
        <button type="submit" name="action" value="sort">Sort by Name</button>
    </form>
</div>

<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>

        <!-- Hiển thị danh sách người dùng -->
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>