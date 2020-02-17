package com.cdac.Iservices;

import java.util.List;

import com.cdac.models.AssignExam;
import com.cdac.models.Candidate;
import com.cdac.models.ExamScheduler;
import com.cdac.models.Question;
import com.cdac.models.Subject;
import com.cdac.models.Test;
import com.cdac.models.TestQuestion;

public interface IAdminService {

	public boolean AddSubject(Subject obj);
	
	public List<Subject> getAllSubjects(String email);
	
	public Subject getSubject(String email,int id);
	
    public Subject getSubjectId(int id);
	
	public boolean DeleteSubject(Subject obj);
	
/////////////////////////////////////////////////Question Functions/////////////////////////////////////////////////////
	
	public boolean AddQuestion(Question obj);
	
	public List<Question> GetAllQuestions(String email,int subject_id);
	
	
////////////////////////////////////////////////////////TEST FUNCTIONS//////////////////////////////////////////////////
	
	public boolean AddTest(Test obj);
	
	public List<Test> GetAllTests(String email);

	public Test getTestId(int tId);

	public boolean DeleteTest(Test obj);
	
	public List<Question> ShowQuestions(String email,int subject_id);
	
	
//////////////////////////////////////////////////////////TEST QUESTION FUNCTION//////////////////////////////////////////
	
	public boolean SaveTestQuestion(TestQuestion obj);

	
///////////////////////////////////////////////////////////////EXAM SCHEDULER FUNCTION///////////////////////////////////	

	/* public ExamScheduler findExamScheduler(int id); */

	public List<ExamScheduler> GetAllExamScheduler(int id,String exam_status,String email);
	
	public boolean AddExamScheduler(ExamScheduler eschedulerObj);
	
	public List<ExamScheduler> GetAllSchedulesTests(String email,int test_id);
	
	
	
///////////////////////////////////////////////////////////////CANDIDATE FUNCTION//////////////////////////////////////////	

	public boolean AddCandidate(Candidate canObj);

	public List<Candidate> GetAllCandidates(String email);

	public boolean AddAssignSchedule(AssignExam assignexam);

	
}
