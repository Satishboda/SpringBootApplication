package com.taashee.InternshipProject.service;

import java.util.List;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;

public interface StudentService {
	Student addStudent(Student student);
	List<Student> getAllStudents();
	Student registerForCourse(int student_id, int course_id);
	Student findByName(String username);
	List<Instructor> findInstructorNamesByStudentId(int studentId);
	List<Course>getAllstudentCourses(int studentId);

}
