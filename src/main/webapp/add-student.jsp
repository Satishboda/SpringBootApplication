<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
 <h2>Add Student</h2>
    <form action="addStudent" method="post">
        <label for="student_name">Student Name:</label>
        <input type="text" id="student_name" name="student_name"><br><br>
        
        <label for="studentEmail">Student Email:</label>
        <input type="email" id="student_email" name="student_email"><br><br>

        <button type="submit">Send</button>
    </form>

</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        display: flex;
        flex-direction:column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 0;
    }
    h2 {
        text-align: center;
    }
    form {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        animation: fadeIn 0.5s ease forwards;
    }
    label {
        font-weight: bold;
    }
    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button[type="submit"] {
         background-color: #4CAF50;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }
    button[type="submit"]:hover {
        background-color:black;
        color:white;
    }
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
<h2>Add Student</h2>
<form action="addStudent" method="post">
    <label for="studentName">Student Name:</label>
    <input type="text" id="studentName" name="studentName"><br><br>
    
    <label for="studentEmail">Student Email:</label>
    <input type="email" id="studentEmail" name="studentEmail"><br><br>

    <button type="submit">Send</button>
</form>
</body>
</html>
