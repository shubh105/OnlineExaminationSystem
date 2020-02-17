 package com.cdac.daosImpl;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.daos.UserDao;
import com.cdac.models.Faculty;
import com.cdac.models.Student;


@Repository("UserDao")
@Component
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean studentRegister(Student st) {
		try {
			Session session= sessionFactory.getCurrentSession();
			session.save(st);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		return false;
	}
}
	
	public boolean facultyRegister(Faculty ft) {
		
		try {
			Session session = sessionFactory.getCurrentSession();
			ft.setVerify("0");
			session.save(ft);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	

	public Student validateStudent(String email, String pass) {
		try {
			Session session=sessionFactory.getCurrentSession();
			Student stObj=session.get(Student.class, email);
			
			if(stObj!=null) {
				if(stObj.getPassword().equals(pass)) {
					return stObj;
				}
			}
			
	}catch(Exception e) {
		e.printStackTrace();
	}
			return null;
	}

	public Faculty validateFaculty(String email, String pass) {
		try {
			Session session=sessionFactory.getCurrentSession();
			Faculty ftObj=session.get(Faculty.class, email);
			
			if(ftObj!=null) {
				if(ftObj.getPass().equals(pass)) {
					return ftObj;
				}
			}
			
	}catch(Exception e) {
		e.printStackTrace();
	}
			return null;
	}
}