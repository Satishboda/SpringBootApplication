package com.taashee.InternshipProject.entity;

import java.util.Arrays;
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
@Table(name="students")
public class Student {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int studentId;
	private String studentName;
	private String studentEmail;
	
	
	@ManyToMany
	@JoinTable(
			name="student_course",
			joinColumns=@JoinColumn(name="studentId"),
			inverseJoinColumns=@JoinColumn(name="courseId")
			)
	private Set<Course> courses=new HashSet<>();
	public Student() {}





	public Student(int studentId, String studentName, String studentEmail) {
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentEmail = studentEmail;
	}





	public Student(int studentId, String studentName, String studentEmail, Set<Course> courses) {
		
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentEmail = studentEmail;
		this.courses = courses;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", studentEmail=" + studentEmail
				+ ", courses=" + courses + "]";
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentEmail() {
		return studentEmail;
	}

	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}

	public Set<Course> getCourses() {
		return courses;
	}

	public void setCourses(Set<Course> courses) {
		this.courses = courses;
	}


}
