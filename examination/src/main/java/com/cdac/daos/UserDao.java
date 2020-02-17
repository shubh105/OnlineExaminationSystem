package com.cdac.daos;


import com.cdac.models.Faculty;
import com.cdac.models.Student;


public interface UserDao {

	public boolean studentRegister(Student st);
	public boolean facultyRegister(Faculty ft);
	public Student validateStudent(String email,String pass);
	public Faculty validateFaculty(String email,String pass);
	
}
