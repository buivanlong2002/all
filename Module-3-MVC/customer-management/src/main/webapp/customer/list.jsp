<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Customer List</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
    }

    h1 {
      color: #333;
      text-align: center;
    }

    a {
      color: #007bff;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    .container {
      max-width: 900px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 6px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 15px;
    }

    table, th, td {
      border: 1px solid #ccc;
    }

    th, td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #007bff;
      color: white;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    .action-links a {
      margin-right: 10px;
    }

    .create-btn {
      display: inline-block;
      padding: 8px 12px;
      background-color: #28a745;
      color: white;
      border-radius: 4px;
      margin-bottom: 15px;
      text-decoration: none;
    }

    .create-btn:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Customers</h1>
  <p>
    <a class="create-btn" href="/customers?action=create">+ Create new customer</a>
  </p>
  <table>
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Address</th>
      <th colspan="2">Actions</th>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
      <tr>
        <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
        <td>${customer.getEmail()}</td>
        <td>${customer.getAddress()}</td>
        <td class="action-links">
          <a href="/customers?action=edit&id=${customer.getId()}">Edit</a>
        </td>
        <td class="action-links">
          <a href="/customers?action=delete&id=${customer.getId()}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>
