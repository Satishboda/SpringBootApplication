package com.taashee.InternshipProject.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;
import com.taashee.InternshipProject.repository.CourseRepository;
import com.taashee.InternshipProject.repository.CustomRepository;
import com.taashee.InternshipProject.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private CustomRepository customRepository;

	@Override
	public Student addStudent(Student student) {
		return studentRepository.save(student);
	}

	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Student registerForCourse(int student_id, int course_id) {
		Student student = studentRepository.findById(student_id).orElse(null);
		if (student == null) {
			throw new NotFoundException("Student not found with id: " + student_id);
		}

		Course course = courseRepository.findById(course_id).orElse(null);
		if (course == null) {
			throw new NotFoundException("Course not found with id: " + course_id);
		}

		student.getCourses().add(course);
		return studentRepository.save(student);
	}

	@Override
	public Student findByName(String username) {

		return studentRepository.findByStudentName(username);

	}

	@Override
	public List<Instructor> findInstructorNamesByStudentId(int studentId) {
		return customRepository.getAllInstructorsByStudentId(studentId);
	}

	@Override
	public List<Course> getAllstudentCourses(int studentId) {
		Student student = studentRepository.findById(studentId).get();
		return new ArrayList<>(student.getCourses());
	}

}

class NotFoundException extends RuntimeException {

	public NotFoundException() {
		super();
	}

	public NotFoundException(String message) {
		super(message);
	}

	public NotFoundException(String message, Throwable cause) {
		super(message, cause);
	}
}
