<%-- 
    Document   : ManagerAccount
    Created on : 28 thg 6, 2024, 20:03:08
    Author     : nguye
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Quản lý tài khoản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 3px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <header>
        <h1>Quản lý tài khoản</h1>
        <a href="AddAccount.jsp">Thêm tài khoản mới</a>
    </header>
    <main>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên</th>
                    <th>Mật khẩu</th>
                    <th>Người bán</th>
                    <th>Quản trị viên</th>
                    <th>Hành động</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${accounts}" var="account">
                    <tr>
                        <td><c:out value="${account.uID}"/></td>
                        <td><c:out value="${account.user}"/></td>
                        <td><c:out value="${account.pass}"/></td>
                        <td><c:out value="${account.isSell}"/></td>
                        <td><c:out value="${account.isAdmin}"/></td>
                        <td>
                            <a href="EditAccountControl?id=${account.uID}">Sửa</a>
                            <a href="DeleteAccountControl?id=${account.uID}">Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </main>
</body>
</html>
