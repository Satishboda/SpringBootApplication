package com.taashee.InternshipProject.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.taashee.InternshipProject.entity.Instructor;
import com.taashee.InternshipProject.entity.Student;

@Repository
public class CustomRepository {
	private static final String getAllInstructorsByStudentId = "SELECT DISTINCT i.* FROM student_course sc \r\n"
			+ "JOIN instructor_course icr ON sc.course_id = icr.course_id \r\n"
			+ "JOIN instructors i ON icr.instructor_id = i.instructor_id \r\n" + "WHERE sc.student_id = ?;";
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Instructor> getAllInstructorsByStudentId(int studentId) {
		return jdbcTemplate.query(getAllInstructorsByStudentId, new Object[] { studentId }, new InstructorRowMapper());
	}

	private static class InstructorRowMapper implements RowMapper<Instructor> {
		@Override
		public Instructor mapRow(ResultSet rs, int rowNum) throws SQLException {
			int instructorId = rs.getInt("instructor_id");
			String instructorName = rs.getString("instructor_name");

			String instructorQualification = rs.getString("instructor_qualification");
			return new Instructor(instructorId, instructorName, instructorQualification);
		}
	}

	private static final String GET_STUDENTS_BY_COURSE_AND_INSTRUCTOR = "SELECT DISTINCT s.* "
			+ "FROM student_course sc " + "JOIN students s ON sc.student_id = s.student_id "
			+ "JOIN instructor_course icr ON sc.course_id = icr.course_id "
			+ "JOIN instructors i ON icr.instructor_id = i.instructor_id "
			+ "WHERE sc.course_id = ? AND i.instructor_id = ?";

	public List<Student> getStudentsByCourseAndInstructor(int courseId, int instructorId) {
		return jdbcTemplate.query(GET_STUDENTS_BY_COURSE_AND_INSTRUCTOR, new Object[] { courseId, instructorId },
				new StudentRowMapper());
	}

	private static class StudentRowMapper implements RowMapper<Student> {
		@Override
		public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
			Student student = new Student();
			student.setStudentId(rs.getInt("student_id"));
			student.setStudentName(rs.getString("student_name"));
			student.setStudentEmail(rs.getString("student_email"));
			return student;
		}
	}

}
