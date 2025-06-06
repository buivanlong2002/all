<%--
  Created by IntelliJ IDEA.
  User: Hoang Tran
  Date: 28/05/2025
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting Customer</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #dc3545;
            margin-bottom: 20px;
        }

        h3 {
            color: #dc3545;
            text-align: center;
            font-weight: bold;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
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

        td:first-child {
            font-weight: bold;
            color: #495057;
            width: 100px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #c82333;
        }

        .back-link {
            margin-left: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Delete Customer</h1>
    <p><a class="back-link" href="/customers">&larr; Back to customer list</a></p>

    <form method="post">
        <h3>Are you sure you want to delete this customer?</h3>
        <fieldset>
            <legend>Customer Information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>${requestScope["customer"].getName()}</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>${requestScope["customer"].getEmail()}</td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>${requestScope["customer"].getAddress()}</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Delete Customer">
                        <a class="back-link" href="/customers">Cancel</a>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>

