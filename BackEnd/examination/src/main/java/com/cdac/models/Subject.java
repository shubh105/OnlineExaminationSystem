package com.cdac.models;

import java.util.List;

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
@Table(name="subject")
public class Subject {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "subject_generator")
	@SequenceGenerator(name="subject_generator",initialValue=1,allocationSize=1)
	@Column(name="subject_id",updatable = false, nullable = false)
	private int subject_id;
	
	@Column(name="subject_name")
	private String sub_name;
	
	@ManyToOne
	@JoinColumn(name="email",insertable=false,updatable=false)
	Admin adminObj;
	
	private String email;

	public Subject() {
		super();
	}

	public Subject(int subject_id, String sub_name, Admin adminObj, String email, List<Question> question) {
		super();
		this.subject_id = subject_id;
		this.sub_name = sub_name;
		this.adminObj = adminObj;
		this.email = email;
	}

	public int getSubject_id() {
		return subject_id;
	}

	public void setSubject_id(int subject_id) {
		this.subject_id = subject_id;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
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
		return "Subject [subject_id=" + subject_id + ", sub_name=" + sub_name + ", adminObj=" + adminObj + ", email="
				+ email + ", question=" + "]";
	}

	

	
	
}
