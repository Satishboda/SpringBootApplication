package com.taashee.InternshipProject.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "instructors")
public class Instructor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int instructorId;
	private String instructorName;
	private String instructorQualification;

	
		
	
	public Instructor() {
		
	}

	@ManyToMany
	@JoinTable(
			name="instructor_course",
			joinColumns=@JoinColumn(name="instructorId"),
			inverseJoinColumns=@JoinColumn(name="courseId")
			)
	private Set<Course> courses=new HashSet<>();

	

	public Instructor(int instructorId, String instructorName, String instructorQualification, Set<Course> courses) {
		
		this.instructorId = instructorId;
		this.instructorName = instructorName;
		this.instructorQualification = instructorQualification;
		this.courses = courses;
	}

	public Instructor(int instructorId, String instructorName, String instructorQualification) {
		super();
		this.instructorId = instructorId;
		this.instructorName = instructorName;
		this.instructorQualification = instructorQualification;
	}

	public int getInstructorId() {
		return instructorId;
	}

	public void setInstructorId(int instructorId) {
		this.instructorId = instructorId;
	}

	public String getInstructorName() {
		return instructorName;
	}

	public void setInstructorName(String instructorName) {
		this.instructorName = instructorName;
	}

	public String getInstructorQualification() {
		return instructorQualification;
	}

	public void setInstructorQualification(String instructorQualification) {
		this.instructorQualification = instructorQualification;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}

	
	

}
