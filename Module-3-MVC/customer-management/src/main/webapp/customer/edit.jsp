<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 28/05/2025
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Edit Customer</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, sans-serif;
      background-color: #f0f2f5;
      margin: 0;
      padding: 20px;
    }

    .container {
      max-width: 600px;
      margin: 0 auto;
      background-color: #fff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      color: #333;
      margin-bottom: 25px;
    }

    a {
      color: #007bff;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    .message {
      color: green;
      font-weight: bold;
      margin-bottom: 10px;
      display: block;
      text-align: center;
    }

    fieldset {
      border: 1px solid #ddd;
      border-radius: 6px;
      padding: 20px;
    }

    legend {
      font-weight: bold;
      font-size: 16px;
      padding: 0 10px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 15px;
    }

    td {
      padding: 10px;
      vertical-align: middle;
    }

    input[type="text"] {
      width: 100%;
      padding: 8px;
      border-radius: 4px;
      border: 1px solid #ccc;
      font-size: 14px;
    }

    input[type="submit"] {
      padding: 10px 20px;
      background-color: #28a745;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 14px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #218838;
    }

    .back-link {
      display: inline-block;
      margin-bottom: 15px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Edit Customer</h1>

  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>

  <p><a class="back-link" href="/customers">&larr; Back to customer list</a></p>

  <form method="post">
    <fieldset>
      <legend>Customer Information</legend>
      <table>
        <tr>
          <td>Name:</td>
          <td><input type="text" name="name" id="name" value="${requestScope["customer"].getName()}"></td>
        </tr>
        <tr>
          <td>Email:</td>
          <td><input type="text" name="email" id="email" value="${requestScope["customer"].getEmail()}"></td>
        </tr>
        <tr>
          <td>Address:</td>
          <td><input type="text" name="address" id="address" value="${requestScope["customer"].getAddress()}"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Update Customer"></td>
        </tr>
      </table>
    </fieldset>
  </form>
</div>
</body>
</html>

