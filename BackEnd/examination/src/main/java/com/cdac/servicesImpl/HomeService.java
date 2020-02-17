package com.cdac.servicesImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.Idao.IHomeDao;
import com.cdac.Iservices.IHomeService;
import com.cdac.models.Admin;
import com.cdac.models.Candidate;


@Service("HomeServices")
@Transactional
public class HomeService implements IHomeService {

	@Autowired
	IHomeDao dao;
	
	public boolean RegisterAdmin(Admin obj) {
		
		boolean result = dao.RegisterAdmin(obj);
		if(result==true) {
			return true;
		}
		else {
			return false;
		}
		
	}

	public Admin ValidateAdmin(String email, String password) {
		
		Admin obj=dao.ValidateAdmin(email, password);
		if(obj!=null) {
			return obj;
		}
		else {
			return null;	
		}
		
		
	}

	@Override
	public Candidate ValidateCandidate(String email, String password) {
		Candidate obj=dao.ValidateCandidate(email, password);
		if(obj!=null) {
			return obj;
		}
		else {
			return null;	
		}
	}

}
