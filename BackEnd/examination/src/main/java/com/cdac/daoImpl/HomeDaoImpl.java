package com.cdac.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.Idao.IHomeDao;
import com.cdac.models.Admin;
import com.cdac.models.Candidate;


@Repository("HomeDao")
@Transactional
@Component
public class HomeDaoImpl implements IHomeDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean RegisterAdmin(Admin obj) {
		
		try {
			Session session = sessionFactory.getCurrentSession();
			session.save(obj);
			return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

	public Admin ValidateAdmin(String email, String password) {
		
		try {
			Session session=sessionFactory.getCurrentSession();
			Admin obj=session.get(Admin.class,email);
			
			if(obj!=null) {
				if(obj.getPass().equals(password)) {
					return obj;
				}
					
			}
	
		}catch(Exception e) {
			e.printStackTrace();
      }
		
		return null;
	}

	@Override
	public Candidate ValidateCandidate(String email, String password) {
		try {
			Session session=sessionFactory.getCurrentSession();
			Candidate obj=session.get(Candidate.class,email);
			
			if(obj!=null) {
				if(obj.getPassword().equals(password)) {
					return obj;
				}
					
			}
	
		}catch(Exception e) {
			e.printStackTrace();
      }
		
		return null;
	}

}
