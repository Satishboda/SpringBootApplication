package com.taashee.InternshipProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;
import com.taashee.InternshipProject.repository.CourseRepository;
import com.taashee.InternshipProject.repository.InstructorRepository;
import com.taashee.InternshipProject.service.CourseService;
import com.taashee.InternshipProject.service.InstructorService;
import com.taashee.InternshipProject.service.StudentService;

@Controller

public class AdminController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private InstructorService instructorService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private InstructorRepository instructorRepository;
	@Autowired
	private CourseRepository courseRepository;
	
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@GetMapping("/adminDashboard")
	public String getAllDetails(Model model) {
		List<Instructor> instructors=instructorService.getAllInstructors();
		List<Course> courses=courseService.getAllCourses();
		List<Student> students=studentService.getAllStudents();
		model.addAttribute("instructors", instructors);
		model.addAttribute("courses", courses);
		model.addAttribute("students", students);
		
		return "admin-page";
		
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@PostMapping("/addInstructor")
	public String saveInstructor(@RequestParam String instructorName,@RequestParam String instructorQualification) {
		Instructor instructor=new Instructor();
		instructor.setInstructorName(instructorName);
		instructor.setInstructorQualification(instructorQualification);
		instructorService.addInstructor(instructor);
		
		return "redirect:/adminDashboard";
		
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@PostMapping("/addStudent")
	public String saveStudent(@RequestParam  String studentName ,@RequestParam String studentEmail ) {
		Student student=new Student();
		student.setStudentName(studentName);
		student.setStudentEmail(studentEmail);
		studentService.addStudent(student);
		return "redirect:/adminDashboard";
	}
	
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@PostMapping("/addCourse")
	public String saveCourse(@RequestParam String courseName,@RequestParam String courseDescription) {
		Course course=new Course();
		course.setCourseName(courseName);
		course.setCourseDescription(courseDescription);
		courseService.addCourse(course);
		return "redirect:/adminDashboard";
		
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@GetMapping("/addStudentForm")
	public String getAddStudentForm(ModelMap modelMap) {
		return "add-student";
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@GetMapping("/addCourseForm")
	public String getAddCourseForm(ModelMap modelMap) {
		return "add-course";
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@GetMapping("/addInstructorForm")
	public String getAddInstructorForm(ModelMap modelMap) {
		return "add-instructor";
	}
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@GetMapping("/addCourseToInstructorForm")
	public String getAddCourseInstructorForm(ModelMap modelMap) {
		List<Course>courses=courseRepository.findAll();
		modelMap.addAttribute("courses", courses);
		return "course-instructor";
	}
	
	@PreAuthorize(value="hasRole('ROLE_ADMIN')")
	@PostMapping("/assignCourseToInstructor")
	public String assignCourseToInstructor(@RequestParam int courseId,@RequestParam int instructorId) {
		Instructor instructor=instructorRepository.findById(instructorId).get();
		Course course=courseRepository.findById(courseId).get();
		instructor.getCourses().add(course);
		instructorRepository.save(instructor);
		return "redirect:/adminDashboard";
	}
	

}
