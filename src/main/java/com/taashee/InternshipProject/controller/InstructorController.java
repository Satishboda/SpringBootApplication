package com.taashee.InternshipProject.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;
import com.taashee.InternshipProject.repository.CourseRepository;
import com.taashee.InternshipProject.repository.CustomRepository;
import com.taashee.InternshipProject.repository.InstructorRepository;
import com.taashee.InternshipProject.repository.StudentRepository;
import com.taashee.InternshipProject.service.CourseService;
import com.taashee.InternshipProject.service.InstructorService;

@Controller

public class InstructorController {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private InstructorService instructorService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private InstructorRepository instructorRepository;
	@Autowired
	private CustomRepository customRepository;


	@PreAuthorize(value="hasRole('ROLE_INSTRUCTOR')")
	@GetMapping("/instructorDashboard")
	public String getInstructors(ModelMap modelMap,Principal principal){
		String username = principal.getName();
		Instructor instructor = instructorRepository.findByInstructorName(username);
		List<Course> courses = new ArrayList<>(instructor.getCourses());
		List<Student> students = new ArrayList<>();
		for(Course course : courses) {
			List<Student> student = customRepository.getStudentsByCourseAndInstructor(course.getCourseId(),
					instructor.getInstructorId());
			for(Student st : student) {
				if(!students.contains(st)) {
					students.add(st);
				}
			}
		}
		List<Student> all_students = studentRepository.findAll();
		modelMap.addAttribute("courses", courses);
		modelMap.addAttribute("instructor", instructor);
		modelMap.addAttribute("students", students);
		modelMap.addAttribute("allstudents", all_students);
		return "instructor-page";
	}
	
	@PreAuthorize(value="hasRole('ROLE_INSTRUCTOR')")
	@PostMapping("/assignCourseToStudent")
	public String assignCourseToStudent(@RequestParam int courseId, @RequestParam int studentId) {
		Student student = studentRepository.findById(studentId).get();
		Course course = courseRepository.findById(courseId).get();
		student.getCourses().add(course);
		studentRepository.save(student);
		return "redirect:/instructorDashboard";
	}

	@PreAuthorize(value="hasRole('ROLE_INSTRUCTOR')")
	@GetMapping("/addCourseToStudentForm")
	public String getAddCourseInstructorForm(ModelMap modelMap) {
		List<Course> courses = courseRepository.findAll();
		modelMap.addAttribute("courses", courses);
		return "course-student";

	}

	
}
