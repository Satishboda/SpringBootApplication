<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Instructor Dashboard</title>
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
	color:green;
	
       
    
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%--  <h2>Instructor Dashboard</h2>
    <p> ${instructor.instructorId}</p>
    <p> ${instructor.instructorName}</p>
    <p> ${instructor.instructorQualification}</p>
     --%>
	<h3>Instructor Details</h2>
	<div class="card">

		<p>
			<span class="field-name">ID:</span><span class="field-value">${instructor.instructorId}</span>
		</p>
		<p>
			<span class="field-name">Name:</span><span class="field-value">${instructor.instructorName}</span>
		</p>
		<p>
			<span class="field-name">Qualification:</span><span
				class="field-value">${instructor.instructorQualification}</span>
		</p>
	</div>

	<h3>Courses:</h3>

	<%-- <c:forEach var="course" items="${instructor.courses}">
		<c:out value="${course.courseName}, " />
	</c:forEach> --%>
	<div class="card">
		<ul>
			<c:forEach var="course" items="${instructor.courses}">
				<li>${course.courseName}</li>
			</c:forEach>
		</ul>
	</div>


	<h3>Students in Courses:</h3>

	<%-- <c:forEach var="student" items="${students}">
				<tr>
					<td>${student.studentId}</td>
					<td>${student.studentName}</td>
					<td>${student.studentEmail}</td>
				</tr>
			</c:forEach> --%>
	<div class="container">
		<c:forEach var="student" items="${students}">
			<div class="card">

				<p>
					<span class="field-name">ID:</span> ${student.studentId}
				</p>
				<p>
					<span class="field-name">Name:</span> ${student.studentName}
				</p>
				<p>
					<span class="field-name">Email:</span> ${student.studentEmail}
				</p>
			</div>
		</c:forEach>
	</div>
	</tbody>


	<%-- <h3>All Students:</h3>
    <table border="1">
        <thead>
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="student" items="${allStudents}">
                <tr>
                    <td>${student.studentId}</td>
                    <td>${student.studentName}</td>
                    <td>${student.studentEmail}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table> --%>
</body>
</html>