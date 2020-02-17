package com.cdac.daos;

import java.util.List;

import com.cdac.models.Questions;
import com.cdac.models.Subject;

public interface FacultyDao {

	public boolean addingSubject(Subject addingSubject);
	public List<Subject> getAllSubject();
	public boolean deleteSubject(Subject obj);
	public boolean updateSubject(Subject obj);
	public Subject getSubjectById(String id);
	public boolean addQuestion(Questions qs);
}
