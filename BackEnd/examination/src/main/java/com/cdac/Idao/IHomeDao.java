package com.cdac.Idao;

import com.cdac.models.Admin;
import com.cdac.models.Candidate;

public interface IHomeDao {

	public boolean RegisterAdmin(Admin obj);
	
	public Admin ValidateAdmin(String email,String password);

	public Candidate ValidateCandidate(String email, String password);
	
}
