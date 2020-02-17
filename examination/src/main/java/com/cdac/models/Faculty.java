package com.cdac.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="faculty")
public class Faculty {

	@Column(name="name")
	private String name;
	@Column(name="password")
	private String pass;
	@Id
	@Column(name="email")
	private String email;
	@Column(name="institute_name")
	private String instituteName;
	@Column(name="verification")
	private String verify;
	
	
	public Faculty() {
		super();
	}


	public Faculty(String name, String pass, String email, String instituteName, String verify) {
		super();
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.instituteName = instituteName;
		this.verify = verify;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
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


	public String getVerify() {
		return verify;
	}


	public void setVerify(String verify) {
		this.verify = verify;
	}


	@Override
	public String toString() {
		return "Faculty [name=" + name + ", pass=" + pass + ", email=" + email + ", instituteName=" + instituteName
				+ ", verify=" + verify + "]";
	}
	
	
}
