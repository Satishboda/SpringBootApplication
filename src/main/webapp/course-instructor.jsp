<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Instructor Form</title>
</head>
<body>
	<h2>Course Instructor Form</h2>
	<form action="assignCourseToInstructor" method="post">
		<label for="course">Select Course:</label> <select name="course_id">
			<c:forEach var="course" items="${courses}">
				<option value="${course.course_id}">${course.course_name}</option>
			</c:forEach>
		</select> <input type="hidden" name="course_name" value="${course.course_name}">
		<label for="instructor_id">Instructor Id:</label>
		 <input type="number"
			id="instructor_id" name="instructor_id" value="${instructor.instructor_id}">
		<button type="submit">Assign Course</button>
	</form>

</body>
</html>
 --%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Instructor Form</title>
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
        max-width: 400px;
        width: 100%;
    }
    label {
        font-weight: bold;
        color: #333;
    }
    select,
    input[type="number"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
        width: 100%;
    }
    button[type="submit"]:hover {
        background-color: black;
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
    <h2>Course Instructor Form</h2>
    <form action="assignCourseToInstructor" method="post">
        <label for="course">Select Course:</label>
        <select name="courseId">
            <c:forEach var="course" items="${courses}">
                <option value="${course.courseId}">${course.courseName}</option>
            </c:forEach>
        </select>
       <%--  <input type="hidden" name="course_name" value="${course.course_name}"> --%>
        <label for="instructorId">Instructor Id:</label>
        <input type="number" id="instructorId" name="instructorId" value="${instructor.instructorId}">
        <button type="submit">Assign Course to Instructor</button>
    </form>
</body>
</html>
 
