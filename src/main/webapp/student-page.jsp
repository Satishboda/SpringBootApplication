<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
	align-items: center;
	margin-left: 30px;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f0f0f0;
}

.card {
	width: 300px;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	margin: 20px;
	padding: 20px;
}

h2 {
	margin-top: 0;
	color: #333;
}

p {
	margin: 5px 0;
	color: #666;
}

.field-name {
	font-weight: bold;
}

.field-value {
	margin-left: 10px;
}

h2, h3 {
	margin-left: 15px;
	
       
    
}
.container{
 display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items:center;
    margin-left: 30px;;
}
body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f0f0f0;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content:flex-start; /* Adjust as needed */
        margin: 20px;
    }

    .card {
        width: 220px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin: 5px;
    }
     .cards {
        width: 300px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin: 5px;
    }
   

    p {
        margin: 5px 0;
        color: #666;
    }
    span{
    font-weight:700;}
    h2{
    color:green;}
</style>

 
</head>
<body>
	<%@ include file="header.jsp"%>

	<%-- <h1 >Welcome, ${username}!</h1> --%>



	<h2>Your Instructors</h2>
	<div class="container">
	
	<c:forEach var="instructor" items="${instructors}">
		<div class="card">
			<p><span>Name:</span>${instructor.instructorName}</p>
			<p><span>Qualification</span>:${instructor.instructorQualification}</p>
		</div>
	</c:forEach>
	</div>
	<%--  <c:forEach var="instructor" items="${instructors}">
                <c:out value="${instructor.instructorName} " />
               
            </c:forEach> --%>


	<h2>Your Enrolled Courses:</h2>
<%-- 
	<c:forEach var="course" items="${courses}">
		<c:out value="${course.courseName}" />
	</c:forEach> --%>
	<%-- <div class="container">
	<c:forEach var="course" items="${courses}">
		<div class="cards">
			<p>CourseName:${course.courseName}</p>
			<p>CourseDescription:${course.courseDescription}</p>
		</div>
	</c:forEach>
	</div> --%>
	<div class="container">
		<c:forEach var="course" items="${courses}">
			<div class="cards">

				<p>
					<span class="field-name">CourseName:</span> ${course.courseName}
				</p>
				<p>
					<span class="field-name">CourseDescription:</span> ${course.courseDescription}
				</p>
				
			</div>
		</c:forEach>
	</div>



</body>
</html>