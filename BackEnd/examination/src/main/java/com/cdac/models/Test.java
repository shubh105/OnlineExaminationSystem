package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="test")
public class Test {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "question_generator")
	@SequenceGenerator(name="question_generator",initialValue=1,allocationSize=1)
	@Column(name="test_id")
	private int test_id;
	
	@Column(name="test_name")
	private String testname;
	
	@Column(name="total_marks")
	private int total_marks;
	
	@Column(name="passing_marks")
	private int passing_marks;
	
	@Column(name="instruction")
	private String instruction;
	
	@ManyToOne
	@JoinColumn(name="subject_id",insertable=false,updatable=false)
	private Subject subjectObj;
	
	private int subject_id;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;

	public Test() {
		super();
	}

	public Test(int test_id, String testname, int total_marks, int passing_marks, String instruction,
			Subject subjectObj, int subject_id, Admin adminObj, String email) {
		super();
		this.test_id = test_id;
		this.testname = testname;
		this.total_marks = total_marks;
		this.passing_marks = passing_marks;
		this.instruction = instruction;
		this.subjectObj = subjectObj;
		this.subject_id = subject_id;
		this.adminObj = adminObj;
		this.email = email;
	}

	public int getTest_id() {
		return test_id;
	}

	public void setTest_id(int test_id) {
		this.test_id = test_id;
	}

	public String getTestname() {
		return testname;
	}

	public void setTestname(String testname) {
		this.testname = testname;
	}

	public int getTotal_marks() {
		return total_marks;
	}

	public void setTotal_marks(int total_marks) {
		this.total_marks = total_marks;
	}

	public int getPassing_marks() {
		return passing_marks;
	}

	public void setPassing_marks(int passing_marks) {
		this.passing_marks = passing_marks;
	}

	public String getInstruction() {
		return instruction;
	}

	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}

	public Subject getSubjectObj() {
		return subjectObj;
	}

	public void setSubjectObj(Subject subjectObj) {
		this.subjectObj = subjectObj;
	}

	public int getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
	}

	public Admin getAdminObj() {
		return adminObj;
	}

	public void setAdminObj(Admin adminObj) {
		this.adminObj = adminObj;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Test [test_id=" + test_id + ", testname=" + testname + ", total_marks=" + total_marks
				+ ", passing_marks=" + passing_marks + ", instruction=" + instruction + ", subjectObj=" + subjectObj
				+ ", subject_id=" + subject_id + ", adminObj=" + adminObj + ", email=" + email + "]";
	}

}
