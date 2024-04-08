package com.taashee.InternshipProject.service;

import java.util.List;
import java.util.Optional;

import com.taashee.InternshipProject.entity.Course;

public interface CourseService {
	Course addCourse(Course course);
	List<Course> getAllCourses();
	

}
