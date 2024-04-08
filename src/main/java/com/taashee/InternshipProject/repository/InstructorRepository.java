package com.taashee.InternshipProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;

@Repository
public interface InstructorRepository extends JpaRepository<Instructor, Integer> {

	Student save(Student student);
	@Query("SELECT s FROM Instructor s WHERE s.instructorName = :username")
	  Instructor findByInstructorName(@Param("username") String username);
	 
}
