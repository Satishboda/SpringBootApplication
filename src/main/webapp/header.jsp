<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

    body {
        margin: 0;
        padding: 0; 
        font-family: Arial, sans-serif;
        background-color: #f8f9fa; 
    }

    .header {
        background-color: #343a40; 
        color: #ffffff; 
        padding: 10px 20px;
        overflow: hidden; 
    }

    .header a {
        float: left; 
        color: #ffffff;
        text-align: center;
        padding: 14px 16px; 
        text-decoration: none; 
    }

    .header a:hover {
        background-color: #555; 
    }

    .header a.right {
        float: right;
    }
</style>
</head>
<body>
<div class="header">
    
    
    <sec:authorize access="hasRole('ADMIN')">
    <a href="addStudentForm">Add Student</a>
  	
    <a href="addInstructorForm">Add Instructor</a>
    
     <a href="addCourseForm">Add Course</a>
     <a href="addCourseToInstructorForm">Assign Course To Instructor</a>
    </sec:authorize>
    <sec:authorize access="hasRole('INSTRUCTOR')">
    
     <a href="addCourseToStudentForm">Assign Course To Student</a>
     </sec:authorize>
     
     
    
    <a href="logout" class="right">Logout</a>
</div>
<center><h3>welcome:  <sec:authentication property="principal.username"/></h3></center>
<%-- <center>
<h3>welcome:  <sec:authentication property="principal.username"/></h3>
<p>Your Permissions Are:   <sec:authentication property="principal.authorities"/></p>
</center>
<% response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");  %> --%>
</body>
</html>