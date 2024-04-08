package com.taashee.InternshipProject.controller;

import java.security.Principal;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;
import com.taashee.InternshipProject.service.StudentService;

@Controller

public class StudentController {
	@Autowired
	private StudentService studentService;
	
	
	@PreAuthorize(value="hasRole('ROLE_STUDENT')")
	@GetMapping("/studentDashboard")
	public String getInstructorNamesByStudentId (ModelMap modelMap, Principal principal) {
		String username = principal.getName();
		Student student = studentService.findByName(username);
		List<Instructor> instructors = studentService.findInstructorNamesByStudentId(student.getStudentId());
        List<Course> courses = studentService.getAllstudentCourses(student.getStudentId());
		modelMap.put("instructors", instructors);
        modelMap.put("courses",courses);
        modelMap.addAttribute("username",username);
		return "student-page";
    }
	

}
