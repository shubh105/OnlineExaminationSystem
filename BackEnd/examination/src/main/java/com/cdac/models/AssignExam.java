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
@Table(name="assign_exam")
public class AssignExam {

	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "assign_generator")
	@SequenceGenerator(name="assign_generator",initialValue=1,allocationSize=1)
	@Column(name="assign_id")
	private int assign_id;
	
	@ManyToOne
	@JoinColumn(name="test_id",insertable=false,updatable=false)
	Test testObj;
	
	private int test_id;
	
	@ManyToOne
	@JoinColumn(name="candidate_email",insertable=false,updatable=false)
	Candidate candidateObj;
	
	private String candidate_email;
	
	@ManyToOne
	@JoinColumn(name="escheduler_id",insertable=false,updatable=false)
	ExamScheduler cschedulerObj;
	
	private int escheduler_id;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;
	

	public AssignExam() {
		super();
	}


	public AssignExam(String candidate_email,int escheduler_id, int test_id, String email) {
		super();
		//this.assign_id = assign_id;
		this.candidate_email = candidate_email;
		this.escheduler_id = escheduler_id;
		this.test_id = test_id;
		this.email = email;
	}



	public int getAssign_id() {
		return assign_id;
	}



	public void setAssign_id(int assign_id) {
		this.assign_id = assign_id;
	}



	public Test getTestObj() {
		return testObj;
	}



	public void setTestObj(Test testObj) {
		this.testObj = testObj;
	}



	public Candidate getCandidateObj() {
		return candidateObj;
	}



	public void setCandidateObj(Candidate candidateObj) {
		this.candidateObj = candidateObj;
	}



	public String getCandidate_email() {
		return candidate_email;
	}



	public void setCandidate_email(String candidate_email) {
		this.candidate_email = candidate_email;
	}



	public ExamScheduler getCschedulerObj() {
		return cschedulerObj;
	}



	public void setCschedulerObj(ExamScheduler cschedulerObj) {
		this.cschedulerObj = cschedulerObj;
	}



	public int getEscheduler_id() {
		return escheduler_id;
	}



	public void setEscheduler_id(int escheduler_id) {
		this.escheduler_id = escheduler_id;
	}



	public int getTest_id() {
		return test_id;
	}



	public void setTest_id(int test_id) {
		this.test_id = test_id;
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
		return "AssignExam [assign_id=" + assign_id + ", testObj=" + testObj + ", candidateObj=" + candidateObj
				+ ", candidate_email=" + candidate_email + ", cschedulerObj=" + cschedulerObj + ", escheduler_id="
				+ escheduler_id + ", test_id=" + test_id + ", adminObj=" + adminObj + ", email=" + email + "]";
	}

	
}
