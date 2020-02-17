package com.cdac.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
	
	
@Entity
@Table(name="admin")
public class Admin {
		
  @Column(name="name")
   private String name;

  @Column(name="password")
   private String pass;
		
  @Id
  @Column(name="email")
   private String email;
		
  @Column(name="organization_name")
   private String instituteName;

public Admin() {
	super();
}

public Admin(String name, String pass, String email, String instituteName, List<Question> question,
		List<Subject> subject) {
	super();
	this.name = name;
	this.pass = pass;
	this.email = email;
	this.instituteName = instituteName;
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

@Override
public String toString() {
	return "Admin [name=" + name + ", pass=" + pass + ", email=" + email + ", instituteName=" + instituteName
			+ ", question=" +"]";
}



}
