<%-- 
    Document   : AddAccount
    Created on : 28 thg 6, 2024, 20:04:09
    Author     : nguye
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Thêm tài khoản mới</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        form {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 3px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Thêm tài khoản mới</h1>
    <form action="AddAccountControl" method="post">
        <label for="user">Tên:</label>
        <input type="text" id="user" name="user" required><br>
        
        <label for="pass">Mật khẩu:</label>
        <input type="password" id="pass" name="pass" required><br>
        
        <label for="isSell">Người bán:</label>
        <input type="text" id="isSell" name="isSell"><br>
        
        <label for="isAdmin">Quản trị viên:</label>
        <input type="text" id="isAdmin" name="isAdmin"><br>
        
        <input type="submit" value="Thêm tài khoản">
    </form>
</body>
</html>
