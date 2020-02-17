package com.cdac.controllers;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.cdac.Iservices.IAdminService;
import com.cdac.models.Admin;
import com.cdac.models.AssignExam;
import com.cdac.models.Candidate;
import com.cdac.models.ExamScheduler;
import com.cdac.models.Question;
import com.cdac.models.Subject;
import com.cdac.models.Test;
import com.cdac.models.TestQuestion;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.cdac.annotation.ServiceResponse;;

@RestController
public class AdminController {

	@Autowired
	IAdminService aService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping(value="/getsubjectsection",method=RequestMethod.GET)
	public ModelAndView GetSubjectSection() {
		
		ModelAndView mv=new ModelAndView("SubjectPage");
		return mv;
	}
	
	@RequestMapping(value="/getShowSubject",method=RequestMethod.GET)
	public ModelAndView GetShowSubject() {
		
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		ModelAndView mv=new ModelAndView("ShowSubject");
		List<Subject> slist=aService.getAllSubjects(email);
		if(slist!=null) {
			mv.addObject("subjectsList",slist);
		}
		return mv;
	}
	
	@RequestMapping(value="/getAddSubject",method=RequestMethod.GET)
	public ModelAndView getAddSubject() {
		
		ModelAndView mv=new ModelAndView("AddSubject");
		return mv;
	}
	
	@RequestMapping(value = "/addsubject",method = RequestMethod.POST)
	public ServiceResponse addSubject(@RequestBody Subject subject) {
		
		System.out.println(subject);
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		subject.setEmail(email);
		System.out.println(subject);
        boolean result=aService.AddSubject(subject);
        if(result==true) {
        	ServiceResponse response = new ServiceResponse("success");
            System.out.println(response);
            return response;
        }
        else {
        	ServiceResponse response = new ServiceResponse("error");
        	System.out.println(response);
            return response;
        }
	}
	
	@RequestMapping(value="/deleteUser/{uId}",method=RequestMethod.DELETE)
	public Subject deleteSubject(@PathVariable int uId) {
		Subject obj= aService.getSubjectId(uId);
		aService.DeleteSubject(obj);
	   return obj;
	
     }
	
	@RequestMapping(value="/getquestionsection",method = RequestMethod.GET)
	public ModelAndView getQuestionSection() {
		
		ModelAndView mv=new ModelAndView("QuestionSection");
			return mv;
	}
	
	@RequestMapping(value="/addquestion",method=RequestMethod.POST)
	public ServiceResponse addQuestion(@RequestBody Question quesObj) {
		
		//System.out.println(quesObj);
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		quesObj.setEmail(email);
		//System.out.println(quesObj);
		aService.AddQuestion(quesObj);
		 ServiceResponse response = new ServiceResponse("success");
	        return response;
		
	}
	
	@RequestMapping(value="/getaddquestion")
	public ModelAndView getAddQuestion() {
		
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		//System.out.println(email);
		ModelAndView mv=new ModelAndView("AddQuestion");
		Question quesObj=new Question();
		//System.out.println(quesObj);
		List<Subject> slist=aService.getAllSubjects(email);
//		for(Subject list : slist) {
//			System.out.println(list);
//		}
			mv.addObject("quesObj", quesObj);
			mv.addObject("subjectsList",slist);
			return mv;
	}
	
	@RequestMapping(value="/getshowquestion")
	public ModelAndView GetShowQuestion() {
		
		ModelAndView mv=new ModelAndView("ShowQuestions");
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<Subject> slist=aService.getAllSubjects(email);
		Question quesObj= new Question();
		mv.addObject("quesObj",quesObj);
		mv.addObject("subjectsList",slist);
		return mv;
	}
	
	@RequestMapping(value="/showquestion",method=RequestMethod.GET)
	public List<Question> ShowQuestions(@RequestParam("subjectId") int subjectId ) {
		
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		System.out.println(subjectId);
		List<Question> qlist=aService.GetAllQuestions(email, subjectId);
		for(Question li : qlist) {
			System.out.println(li);
		}
		System.out.println(qlist);
		return qlist;
		
	}
	
	@RequestMapping(value="/getexamcreation")
	public ModelAndView GetExamSection() {
		
		ModelAndView mv= new ModelAndView("ExamSection");
//		Admin obj=(Admin)session.getAttribute("adminObj");
//		String email=obj.getEmail();
//		//System.out.println("I MA In");
//		Test testObj=new Test();
//		//System.out.println(testObj);
//		List<Subject> slist=aService.getAllSubjects(email);
//		mv.addObject("testObj", testObj);
//		mv.addObject("subjectsList",slist);
		return mv;
	}
	
	@RequestMapping(value="/getaddtest",method = RequestMethod.GET)
	public ModelAndView GetAddTest() {
		
		ModelAndView mv= new ModelAndView("AddTest");
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		//System.out.println("I MA In");
		Test testObj=new Test();
		System.out.println(testObj);
		List<Subject> slist=aService.getAllSubjects(email);
		mv.addObject("testObj", testObj);
		mv.addObject("subjectsList",slist);
		return mv;
	}
	
	@RequestMapping(value="/addtest",method=RequestMethod.POST)
	public ServiceResponse addTest(@RequestBody Test testObj) {
		
		System.out.println(testObj);
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		testObj.setEmail(email);
		System.out.println(testObj);
		aService.AddTest(testObj);
		ServiceResponse response = new ServiceResponse("success");
	    return response;
		
	}
	
	@RequestMapping(value="/getshowtest",method = RequestMethod.GET)
    public ModelAndView ShowTests() {
		
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		ModelAndView mv=new ModelAndView("ShowTests");
		List<Test> tlist=aService.GetAllTests(email);
		if(tlist!=null) {
			for(Test tl : tlist) {
			String name= tl.getSubjectObj().getSub_name();
				System.out.println(name);
			}			
			mv.addObject("testList",tlist);
			return mv;
		}
		else {
			return mv;
		}
	
     }
	
	@RequestMapping(value="/deleteTest/{uId}",method=RequestMethod.DELETE)
	public Test deleteTest(@PathVariable int uId) {
		System.out.println("I Am Delete");
		Test obj= aService.getTestId(uId);
		aService.DeleteTest(obj);
	   return obj;
	
     }
	
	@RequestMapping(value="/getaddtestquestion")
	public ModelAndView GetAddTestQuestion() {
		
		ModelAndView mv= new ModelAndView("AddQuestionToTest");
		return mv;
	}
	
	@RequestMapping(value="/getselectquestion",method=RequestMethod.GET)
	public ModelAndView GetSelectQuestion() {
		
		ModelAndView mv= new ModelAndView("SelectQuestion");
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<Subject> slist=aService.getAllSubjects(email);
		for(Subject list : slist) {
			System.out.println(list);
		}
		List<Test> tlist=aService.GetAllTests(email);
		TestQuestion tqObj=new TestQuestion();
		mv.addObject("tqObj",tqObj);
		mv.addObject("subjectsList",slist);
		mv.addObject("testList",tlist);
		return mv;
	}


	@RequestMapping(value="/savetestquestion",method=RequestMethod.POST)
	public ServiceResponse addTestQuestion(@RequestBody String array) throws JsonMappingException, JsonProcessingException {
	
		 ObjectMapper mapper = new ObjectMapper();
		//System.out.println(array.charAt(0));
		//array.toCharArray();
		//System.out.println(array.length());
//	      String[] test=array.split(",");
//	      for(int i=0;i<test.length;i++) {
//	    	  System.out.println(test[i]);
//	      }
		Map<String,String> map = mapper.readValue(array, Map.class);
		//System.out.println(array.get("question"));
		 System.out.println(map);
		 
		 String question=map.get("question");
		 String optionA=map.get("optionA");
		 String optionB=map.get("optionB");
		 String optionC=map.get("optionC");
		 String optionD=map.get("optionD");
		 String correctAns=map.get("correctAns");
		 String marks= map.get("marks");
		 int imarks=Integer.parseInt(marks);
		 String test_id= map.get("testId");
		 int testId =Integer.parseInt(test_id);
		 Admin obj=(Admin)session.getAttribute("adminObj");
		 String email=obj.getEmail();
		 
		 TestQuestion testq=new TestQuestion(1,question,optionA,optionB,optionC,optionD,correctAns,imarks,testId,email);
		 boolean b=aService.SaveTestQuestion(testq);
		 System.out.println(b);
	    //System.out.println(array);
	    //System.out.println(optionA);
		//System.out.println("work");
		ServiceResponse response = new ServiceResponse("success");
	    return response;
		
	}
	
	@RequestMapping(value="/getexamscheduler",method=RequestMethod.GET)
	public ModelAndView GetExamScheduler() {
		
		ModelAndView mv= new ModelAndView("ExamScheduler");
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		ExamScheduler eschedulerObj=new ExamScheduler();
		List<Test> tlist=aService.GetAllTests(email);
		mv.addObject("testList",tlist);
		mv.addObject("eschedulerObj",eschedulerObj);
		return mv;
		
	}

	
	@RequestMapping(value="/addexamscheduler",method=RequestMethod.POST)
	public ServiceResponse AddExamScheduler(@RequestBody ExamScheduler eschedulerObj) {
		
		System.out.println(eschedulerObj);
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		eschedulerObj.setEmail(email);
		eschedulerObj.setExam_status("inactive");
		//System.out.println(quesObj);
		aService.AddExamScheduler(eschedulerObj);
		ServiceResponse response = new ServiceResponse("success");
	    return response;
		
	}
	
	@RequestMapping(value="/showscheduledtest",method=RequestMethod.GET)
	public List<ExamScheduler> ShowScheduledTest(@RequestParam("test_id") int test_id ) {
		
		System.out.println("i am in");
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		System.out.println(test_id);
		List<ExamScheduler> selist=aService.GetAllSchedulesTests(email, test_id);
		for(ExamScheduler li : selist) {
			System.out.println(li);
		}
		System.out.println(selist);
		return selist;
		
	}
	
	@RequestMapping(value="/changestatus",method=RequestMethod.PUT)
	public List<ExamScheduler> ChangeExamStatus(@RequestBody String status) throws JsonMappingException, JsonProcessingException {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<Integer,String> map=mapper.readValue(status,Map.class);
		
		System.out.println(map);
		String id=map.get("id"); 
		int esId= Integer.parseInt(id); 
		String exam_status=map.get("status");
		/* ExamScheduler esObj=aService.findExamScheduler(esId,exam_status); */
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<ExamScheduler> list= aService.GetAllExamScheduler(esId,exam_status,email);
		return list;
	}
	
	@RequestMapping(value="/getaddcandidate")
	public ModelAndView GetAddCandidate() {
		ModelAndView mv= new ModelAndView("CandidateRegister");
		Candidate canObj= new Candidate();
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<Candidate> list = aService.GetAllCandidates(email);
		mv.addObject("list", list);
		mv.addObject("canObj",canObj);
		return mv;
	}
	
	@RequestMapping(value="/addcandidate",method=RequestMethod.POST)
	public List<Candidate> addCandidate(@RequestBody Candidate canObj) {
		

		//System.out.println(canObj);
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		canObj.setEmail(email);
		//System.out.println(canObj);
		aService.AddCandidate(canObj);
		List<Candidate> list = aService.GetAllCandidates(email);
		for(Candidate li : list) {
			System.out.println(li);
		}
	
		return list;
		
	}
	
	@RequestMapping(value="/getassignpage")
	public ModelAndView GetAssignPage() {
		
		ModelAndView mv= new ModelAndView("AssignExam");
		AssignExam assignObj = new AssignExam();
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<Candidate> candidatelist = aService.GetAllCandidates(email);
		List<Test> testList = aService.GetAllTests(email);
		mv.addObject("testList", testList);
		mv.addObject("candidatelist", candidatelist);
		mv.addObject("assignObj", assignObj);
		return mv;
		
	}
	
	@RequestMapping(value="/getExamScheduleList")
	public List<ExamScheduler> GetScheduledExamList(@RequestParam("testId") int testId){
		
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		List<ExamScheduler> esList = aService.GetAllSchedulesTests(email, testId);
		return esList;
	}
	
	@RequestMapping(value="/assigncandidate",method = RequestMethod.POST)
	public ServiceResponse AssignCandidate(@RequestBody String assignObj) throws JsonMappingException, JsonProcessingException {
		
		System.out.println(assignObj);
		
		 ObjectMapper mapper = new ObjectMapper();
		 Map<String,String> map=mapper.readValue(assignObj,Map.class);
		
		 String tid= map.get("selectedtest");
		 int test_id= Integer.parseInt(tid);
		 
		 String sid= map.get("selectedschedule");
		 int escheduler_id= Integer.parseInt(sid);
		 
		 String candidate_email=map.get("email");
		 
		Admin obj=(Admin)session.getAttribute("adminObj");
		String email=obj.getEmail();
		
		AssignExam assignexam= new AssignExam(candidate_email,escheduler_id,test_id,email);
		
		aService.AddAssignSchedule(assignexam);
		
		ServiceResponse response = new ServiceResponse("success");
		return response;
		
	}
	
	
	@RequestMapping(value="/getcontactpage")
	public ModelAndView GetContactPage() {
		
		ModelAndView mv= new ModelAndView("ContactPage");
		return mv;
		
	}
	
}
