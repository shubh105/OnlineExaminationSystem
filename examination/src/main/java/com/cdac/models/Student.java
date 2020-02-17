package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {

	@Column(name="name")
	private String name;
	@Column(name="password")
	private String password;
	@Id
	@Column(name="email")
	private String email;
	@Column(name="institute_name")
	private String instituteName;
	
	
	
	public Student() {
		super();
	}
	public Student(String name, String password, String email, String instituteName) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.instituteName = instituteName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInstituteName() {
		return instituteName;
	}
	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", password=" + password + ", email=" + email + ", instituteName="
				+ instituteName + "]";
	}
	
	
	
}
