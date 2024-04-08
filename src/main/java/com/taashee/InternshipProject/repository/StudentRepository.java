package com.taashee.InternshipProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.taashee.InternshipProject.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
	 @Query("SELECT s FROM Student s WHERE s.studentName = :username") 
	 Student findByStudentName(@Param("username") String username); 

}
