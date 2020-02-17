package com.cdac.daosImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.daos.FacultyDao;
import com.cdac.models.Faculty;
import com.cdac.models.Questions;
import com.cdac.models.Subject;


@Repository("FacultyDao")
@Component
@Transactional
public class FacultyDaoImpl implements FacultyDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public boolean addingSubject(Subject sb) {
	
		try{
		Session session= sessionFactory.getCurrentSession();
		session.save(sb);
		return true;
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return false;
	}

	@Override
	public List<Subject> getAllSubject() {
		
		try {
		Session session=sessionFactory.getCurrentSession();
		Query query= session.createQuery("from com.cdac.models.Subject");
//		List<Subject> ls= new ArrayList<>();
//		ls=query.list();
//		for( Subject s : ls) {
//			System.out.println(s);
//		}
		return query.list();
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
		return null;
	}

	@Override
	public boolean deleteSubject(Subject obj) {
		try {
		Session session=sessionFactory.getCurrentSession();
		session.delete(obj);
		return true;
	}catch(Exception e) {
		e.printStackTrace();
	}
		return false;
	}
	

	@Override
	public Subject getSubjectById(String id) {
		
		try {
			Session session= sessionFactory.getCurrentSession();
			Subject sub= session.get(Subject.class, id);
			return sub;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean updateSubject(Subject obj) {
		
		try {
		Session session=sessionFactory.getCurrentSession();
		session.update(obj);
		return true;
	}catch(Exception e) {
		e.printStackTrace();
	}
		return false;
	}

	@Override
	public boolean addQuestion(Questions qs) {
		
		try {
			Session session=sessionFactory.getCurrentSession();
			session.save(qs);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	
	
}
