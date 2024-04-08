<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Instructor</title>
</head>
<body>
<h1>Add Instructor</h1>
	<form action="addInstructor" method="post">
        <label for="instructor_name">Instructor Name</label>
        <input type="text" id="instructor_name" name="instructor_name"><br><br>
        
        <label for="instructor_qualification">Instructor Qualification</label>
        <input type="text" id="instructor_qualification" name="instructor_qualification"><br><br>

        <button type="submit" value="submit">Send</button>
    </form>

</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Instructor</title>
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
        h1 {
            text-align: center;
        }
        form {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            animation: slideIn 0.5s ease forwards;
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
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
            background-color: black;
            color:white;
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
    <h1>Add Instructor</h1>
    <form action="addInstructor" method="post">
        <label for="instructorName">Instructor Name</label>
        <input type="text" id="instructorName" name="instructorName"><br><br>
        
        <label for="instructorQualification">Instructor Qualification</label>
        <input type="text" id="instructorQualification" name="instructorQualification"><br><br>

        <button type="submit">Send</button>
    </form>
</body>
</html>
