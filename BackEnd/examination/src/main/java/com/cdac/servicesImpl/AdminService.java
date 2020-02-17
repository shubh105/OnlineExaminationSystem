package com.cdac.servicesImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cdac.Idao.IAdminDao;
import com.cdac.Iservices.IAdminService;
import com.cdac.models.AssignExam;
import com.cdac.models.Candidate;
import com.cdac.models.ExamScheduler;
import com.cdac.models.Question;
import com.cdac.models.Subject;
import com.cdac.models.Test;
import com.cdac.models.TestQuestion;

@Service("AdminService")
@Transactional
public class AdminService implements IAdminService {

	@Autowired
	IAdminDao dao;
	
	public boolean AddSubject(Subject obj) {
		
		boolean result= dao.AddSubject(obj);
		if(result==true) {
			return true;
		}
		else {
			
			return false;
		}
		
	}

	@Override
	public List<Subject> getAllSubjects(String email) {
		
		List<Subject> list=dao.getAllSubjects(email);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
		
	}

	@Override
	public Subject getSubjectId(int id) {
		
		Subject obj= dao.getSubjectId(id);
		if(obj!=null) {
			return obj;
		}
		return null;
	}

	@Override
	public boolean DeleteSubject(Subject obj) {
		
		boolean b=dao.DeleteSubject(obj);
		if(b==true) {
			return true;
		}
		else {
			return false;
		}
		
	}

	@Override
	public boolean AddQuestion(Question obj) {
		
		boolean b= dao.AddQuestion(obj);
		if(b==true) {
			return true;
		}
		else {
			return false;
		}
		
	}

	@Override
	public List<Question> GetAllQuestions(String email, int subject_id) {

		List<Question> list=dao.GetAllQuestion(email,subject_id);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
		
	}

	@Override
	public boolean AddTest(Test obj) {
		
		boolean b=dao.AddTest(obj);
		if(b==true) {
			return true;
		}else {
			return false;
			
		}
	}

	@Override
	public List<Test> GetAllTests(String email) {
		List<Test> list=dao.GetAllTest(email);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
	}

	@Override
	public Subject getSubject(String email, int id) {
		Subject sub=dao.getSubject(email,id);
		if(sub!=null) {
			return sub;
		}
		else {
			return null;	
		}
	}

	@Override
	public Test getTestId(int tId) {
		Test obj= dao.getTestId(tId);
		if(obj!=null) {
			return obj;
		}
		return null;
	}

	@Override
	public boolean DeleteTest(Test obj) {
		boolean b=dao.DeleteTest(obj);
		if(b==true) {
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public List<Question> ShowQuestions(String email, int subject_id) {
		List<Question> list=dao.ShowQuestions(email,subject_id);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
	}

	@Override
	public boolean SaveTestQuestion(TestQuestion obj) {
		boolean b=dao.SaveTestQuestion(obj);
		if(b==true) {
			return true;
		}else {
			return false;
			
		}
	}

	@Override
	public boolean AddExamScheduler(ExamScheduler eschedulerObj) {
		boolean b=dao.AddExamScheduler(eschedulerObj);
		if(b==true) {
			return true;
		}else {
			return false;
			
		}
		
	}

	@Override
	public List<ExamScheduler> GetAllSchedulesTests(String email,int test_id) {
		List<ExamScheduler> list=dao.GetAllSchedulesTests(email,test_id);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
	}

	/*
	 * @Override public ExamScheduler findExamScheduler(int id) { ExamScheduler obj=
	 * dao.GetExamScheduler(id); if(obj!=null) { return obj; } return null; }
	 */

	@Override
	public List<ExamScheduler> GetAllExamScheduler(int id,String exam_status,String email) {
		List<ExamScheduler> list=dao.GetAllExamScheduler(id,exam_status,email);
		if(list!=null) {
			return list;
		}
		else {
			return null;	
		}
	}

	@Override
	public boolean AddCandidate(Candidate canObj) {
		
		boolean b= dao.AddCandidate(canObj);
		if(b==true) {
			return true;
		}else {
			return false;
			
		}
	}

	@Override
	public List<Candidate> GetAllCandidates(String email) {
		
		List<Candidate> list = dao.GetAllCandidate(email);
		if(list!=null) {
			return list;
		}else {
			return null;
		}
		
	}

	@Override
	public boolean AddAssignSchedule(AssignExam assignexam) {
		boolean b= dao.AddAssignSchedule(assignexam);
		if(b==true) {
			return true;
		}else {
			return false;
			
		}
	}

}

