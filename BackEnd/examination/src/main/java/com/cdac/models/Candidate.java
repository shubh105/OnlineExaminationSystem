package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="candidate")
public class Candidate {
	
	@Column(name="roll_no")
	private String roll_no;
	
	@Column(name="first_name")
	private String first_name;
	
	@Column(name="second_name")
	private String last_name;
	
	@Column(name="password")
	private String password;
	
	@Id
	@Column(name="candidate_email")
	private String candidate_email;

	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;
	
	

	public Candidate() {
		super();
	}

	public Candidate(String roll_no, String first_name, String last_name, String password, String candidate_email,
			Admin adminObj, String email) {
		super();
		this.roll_no = roll_no;
		this.first_name = first_name;
		this.last_name = last_name;
		this.password = password;
		this.candidate_email = candidate_email;
		this.adminObj = adminObj;
		this.email = email;
	}

	public String getRoll_no() {
		return roll_no;
	}

	public void setRoll_no(String roll_no) {
		this.roll_no = roll_no;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCandidate_email() {
		return candidate_email;
	}

	public void setCandidate_email(String candidate_email) {
		this.candidate_email = candidate_email;
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
		return "Candidate [roll_no=" + roll_no + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", password=" + password + ", candidate_email=" + candidate_email + ", adminObj=" + adminObj
				+ ", email=" + email + "]";
	}

	
}
