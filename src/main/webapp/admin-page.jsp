<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<style>
.container {
	/* display: flex;
	
	flex-wrap: wrap;
	margin: auto;
	
	justify-content: center;
	margin: auto; */
	 display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    align-items:center;
    margin-left: 30px;
    
}
h3{
color:green;
margin-left:35px;}

.student-card {
	
	 border: 1px solid black;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-right: 20px;
    margin-bottom: 20px;
    background-color: #fff;
}
.course-card {
	
	 border: 1px solid black;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-right: 20px;
    margin-bottom: 20px;
    background-color: #fff;
}
.instructor-card {
	
	 border: 1px solid black;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid #ccc;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    margin-right: 20px;
    margin-bottom: 20px;
    background-color: #fff;
}

.student-card h3 {
	margin: 0;
	color: #333;
	font-size: 18px;
}
.course-card h3 {
	margin: 0;
	color: #333;
	font-size: 18px;
}
.instructor-card h3 {
	margin: 0;
	color: #333;
	font-size: 18px;
}

.student-details {
	margin-bottom: 10px;
}


.student-details p {
	margin: 5px 0;
	color: #666;
	font-size: 14px;
}

.course-list {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.course-list li {
	margin-bottom: 5px;
	color: #444;
	font-size: 14px;
}
.student-card{
	width:200px;
	height:200px;
}
.course-card{
width:200px;
	height:100px;
}
.instructor-card{
width:200px;
	height:130px;
}

.gap {
	margin-left: 15px;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<h3>Students</h3>
	<%-- <div class="container">
		<c:forEach var="student" items="${students}">
			<div class="student-card">
				<div class="student-details">
					<p>
						<strong>ID:</strong>
						<c:out value="${student.studentId}" />
					</p>
					<p>
						<strong>Name:</strong>
						<c:out value="${student.studentName}" />
					</p>
					<p>
						<strong>Email:</strong>
						<c:out value="${student.studentEmail}" />
					</p>
				</div>
				<div class="gap">
					<h4>Registered Courses:</h4>
					<ul class="course-list">
						<c:forEach var="course" items="${student.courses}">
							<li><c:out value="${course.courseName} " /></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div> --%>
	<div class="container">
		<c:forEach var="student" items="${students}">
			<div class="student-card">
				<div class="student-details">
					<p>
						<strong>ID:</strong>
						<c:out value="${student.studentId}" />
					</p>
					<p>
						<strong>Name:</strong>
						<c:out value="${student.studentName}" />
					</p>
					<p>
						<strong>Email:</strong>
						<c:out value="${student.studentEmail}" />
					</p>
					<p>
						<strong>Registered Courses:</strong>
						<ul class="course-list">
						<c:forEach var="course" items="${student.courses}">
							<li><c:out value="${course.courseName} " /></li>
						</c:forEach>
					</ul>
					</p>
				</div>
				
			</div>
		</c:forEach>
		</div>
	<h3>Courses</h3>
	<div class="container">
		<c:forEach var="course" items="${courses}">
			<div class="course-card" >
				<div class="student-details">
					<p>
						<strong>ID:</strong>
						<c:out value="${course.courseId}" />
					</p>
					<p>
						<strong>Name:</strong>
						<c:out value="${course.courseName}" />
					</p>
					<p>
						<strong>description:</strong>
						<c:out value="${course.courseDescription}" />
					</p>
				</div>
				<%-- <div class="gap">
					<h4>Registered Courses:</h4>
					<ul class="course-list">
						<c:forEach var="course" items="${student.courses}">
							<li><c:out value="${course.courseName} " /></li>
						</c:forEach>
					</ul>
				</div> --%>
			</div>
		</c:forEach>
	</div>
	<h3>Instructors</h3>
	<div class="container">
		<c:forEach var="instructor" items="${instructors}">
			<div class="instructor-card">
				<div class="student-details">
					<p>
						<strong>ID:</strong>
						<c:out value="${instructor.instructorId}" />
					</p>
					<p>
						<strong>Name:</strong>
						<c:out value="${instructor.instructorName}" />
					</p>
					<p>
						<strong>Field Of Teaching:</strong>
						<ul class="course-list">
						<c:forEach var="course" items="${instructor.courses}">
							<li><c:out value="${course.courseName} " /></li>
						</c:forEach>
					</ul>
					</p>
					
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<style>
<
style>.container {
display:flex;
 flex-wrap: wrap;
 flex-direction:row;

	
}

.student-card {

	border: 1px solid black;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 1px solid #ccc;
	border-radius: 8px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 20px;
	margin-bottom: 20px;
	background-color: #fff;
	width: 30%;
}

.student-card h3 {
	margin: 0;
	color: #333;
	font-size: 18px;
}

.student-details {
	margin-bottom: 10px;
}

.student-details p {
	margin: 5px 0;
	color: #666;
	font-size: 14px;
}

.course-list {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

.course-list li {
	margin-bottom: 5px;
	color: #444;
	font-size: 14px;
}
.gap{
margin-left:15px;
}
</style>
</style>
</head>
<body>
	<div class="container">
		<c:forEach var="student" items="${students}">
			<div class="student-card">
				<div class="student-details">

					<p>
						<Strong>ID:</Strong>
						<c:out value="${student.studentId}" />
					</p>
					<p>
						<Strong>Name:</Strong>
						<c:out value="${student.studentName}" />
					</p>
					<p>
						<Strong>Email:</Strong>
						<c:out value="${student.studentEmail}" />
					</p>
				</div>
				<div class="gap">
					<h4>Registered Courses:</h4>
					<ul class="course-list">
						<c:forEach var="course" items="${student.courses}">
							<li><c:out value="${course.courseName} " /></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
	</body>
</html> --%>
<%-- <%@ include file="header.jsp"%>
	<center>
		<h2>Students</h2>
		<table border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Registered Courses</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${students}">
					<tr>
						<td><c:out value="${student.studentId}" /></td>
						<td><c:out value="${student.studentName}" /></td>
						<td><c:out value="${student.studentEmail}" /></td>
						<td><c:if test="${student.courses != null}">
								<c:forEach var="course" items="${student.courses}">
									<c:out value="${course.courseName}, " />
								</c:forEach>
							</c:if> <c:if test="${student.courses == null}">
								<c:out value="N/A" />
							</c:if></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		

		<h2>Courses</h2>
		<table border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="course" items="${courses}">
					<tr>
						<td><c:out value="${course.courseId}" /></td>
						<td><c:out value="${course.courseName}" /></td>
						<td><c:out value="${course.courseDescription}" /></td>
						<td><c:if test="${student.courses != null}">
								<c:forEach var="course" items="${student.courses}">
									<c:out value="${course.name}, " />
								</c:forEach>
							</c:if> <c:if test="${student.courses == null}">
								<c:out value="N/A" />
							</c:if></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h2>Instructors</h2>
		<table border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Qualification</th>
					<th>Field of Teaching</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="instructor" items="${instructors}">
					<tr>
						<td><c:out value="${instructor.instructorId}" /></td>
						<td><c:out value="${instructor.instructorName}" /></td>
						<td><c:out value="${instructor.instructorQualification}" /></td>
						<td><c:if test="${instructor.courses != null}">
								<c:forEach var="course" items="${instructor.courses}">
									<c:out value="${course.courseName}, " />
								</c:forEach>
							</c:if> <c:if test="${instructor.courses == null}">
								<c:out value="N/A" />
							</c:if></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</center> --%>


