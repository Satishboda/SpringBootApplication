package com.taashee.InternshipProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.taashee.InternshipProject.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer> {

}
