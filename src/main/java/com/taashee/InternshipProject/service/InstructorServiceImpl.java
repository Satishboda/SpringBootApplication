package com.taashee.InternshipProject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.taashee.InternshipProject.entity.Course;
import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;
import com.taashee.InternshipProject.repository.CourseRepository;
import com.taashee.InternshipProject.repository.InstructorRepository;
import com.taashee.InternshipProject.repository.StudentRepository;

@Service
public class InstructorServiceImpl implements InstructorService {
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private CourseRepository courseRepository;
	@Autowired
	private InstructorRepository instructorRepository;

	

	@Override
	public Instructor addInstructor(Instructor instructor) {

		return instructorRepository.save(instructor);
	}

	@Override
	public List<Instructor> getAllInstructors() {
		return instructorRepository.findAll();
	}




}
