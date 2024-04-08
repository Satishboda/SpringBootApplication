package com.taashee.InternshipProject.service;

import java.util.List;

import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;

public interface InstructorService {
	Instructor addInstructor(Instructor instructor);
	List<Instructor> getAllInstructors();

}
