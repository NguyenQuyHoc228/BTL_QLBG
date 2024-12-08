<%-- 
    Document   : Account
    Created on : 28 thg 6, 2024, 14:13:53
    Author     : nguye
--%>

<%@ page import="model.Student" %>
<%@ page import="dao.StudentDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    StudentDAO studentDAO = new StudentDAO();
    Student student = studentDAO.selectStudentById(id);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h1>Edit Student</h1>
    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>">
        <label>Name:</label>
        <input type="text" name="name" value="<%= student.getName() %>"><br>
        <label>Email:</label>
        <input type="email" name="email" value="<%= student.getEmail() %>"><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>

