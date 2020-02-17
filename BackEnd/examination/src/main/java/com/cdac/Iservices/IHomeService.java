package com.cdac.Iservices;

import com.cdac.models.Admin;
import com.cdac.models.Candidate;

public interface IHomeService {

	public boolean RegisterAdmin(Admin obj);
	
	public Admin ValidateAdmin(String email,String Password);

	public Candidate ValidateCandidate(String email, String password);
}
