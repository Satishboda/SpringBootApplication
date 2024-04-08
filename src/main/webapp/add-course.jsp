<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring boot application</title>
</head>
<body>
<form action="addCourse" method="post">
        <label for="course_name">Course Name</label>
        <input type="text" id="course_name" name="course_name"><br><br>
        
        <label for="course_description">Course Description</label>
        <input type="text" id="course_description" name="course_description"><br><br>

        <button type="submit" >Send</button>
    </form>

</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction:column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button[type="submit"] {
             background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button[type="submit"]:hover {
            background-color: black;
            color:white;
        }
        h2{
        text-align:center;
        }
        @keyframes slideIn {
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
<h2>Add Your Desired Course</h2>
    <form action="addCourse" method="post">
        <label for="courseName">Course Name</label>
        <input type="text" id="courseName" name="courseName"><br><br>
        
        <label for="courseDescription">Course Description</label>
        <input type="text" id="courseDescription" name="courseDescription"><br><br>

        <button type="submit">Send</button>
    </form>
</body>
</html>
