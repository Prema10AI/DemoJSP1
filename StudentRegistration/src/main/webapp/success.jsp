<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Successful</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }

        h2 {
            color: green;
        }

        table {
            border-collapse: collapse;
            width: 500px;
        }

        th, td {
            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #eeeeee;
        }

        .success {
            color: green;
            font-weight: bold;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>

<body>

<h2>Student Registration Successful</h2>

<c:if test="${not empty student}">

    <table>

        <tr>
            <th>Student Name</th>
            <td>${student.name}</td>
        </tr>

        <tr>
            <th>Email ID</th>
            <td>${student.email}</td>
        </tr>

        <tr>
            <th>Course</th>
            <td>${student.course}</td>
        </tr>

    </table>

    <br>

    <p class="success">
        Student registered successfully!
    </p>

</c:if>

<c:if test="${empty student}">

    <p>No student information found.</p>

</c:if>

<br>

<a href="index.jsp">Register Another Student</a>

</body>
</html>