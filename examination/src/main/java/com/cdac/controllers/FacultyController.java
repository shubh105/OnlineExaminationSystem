package com.cdac.controllers;

import java.util.List;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;

import com.cdac.annotation.ServiceResponse;
import com.cdac.daos.FacultyDao;
import com.cdac.models.Questions;
import com.cdac.models.Subject;


@RestController
public class FacultyController {
	
	@Autowired 
	HttpSession session;

	@Autowired
	FacultyDao fDao;
	
	
	@RequestMapping(value = "/addsubject",method = RequestMethod.POST)
	public ServiceResponse addSubject(@RequestBody Subject subject) {
        fDao.addingSubject(subject);
       // System.out.println("Ajax Working");
        ServiceResponse response = new ServiceResponse("success",subject);
        return response;
	    
	}
	
	@RequestMapping(value="/deleteUser/{uId}",method=RequestMethod.DELETE)
	public Subject deleteSubject(@PathVariable String uId) {
		Subject obj= fDao.getSubjectById(uId);
		fDao.deleteSubject(obj);
	   return obj;
	}
	
	@RequestMapping(value="/getsubjectsection")
	public ModelAndView getSubjectSection() {
		
	    ModelAndView mv=new ModelAndView("subjectSection");
		return mv;
	}
	
	@RequestMapping(value="/getfacultyhome")
	public ModelAndView getFacultyHome() {
		
	    ModelAndView mv=new ModelAndView("facultyHome");
		return mv;
	}
	
	
	@RequestMapping(value="/getShowSubject")
	public ModelAndView getshowSubject() {
		List<Subject> slist=fDao.getAllSubject();
		ModelAndView mv=new ModelAndView("ShowSubjects");
		mv.addObject("subjectsList",slist);
		return mv;
	}
	
	@RequestMapping(value="/getAddSubject")
	public ModelAndView getAddSubject() {
		
		ModelAndView mv=new ModelAndView("AddSubject");
		return mv;
	}
	
	@RequestMapping(value="/getpapersection")
	public ModelAndView getMakePaper() {
		
		ModelAndView mv=new ModelAndView("paperSection");
		return mv;
	}
	
	@RequestMapping(value="/getquestionsection")
	public ModelAndView getQuestionSection() {
		List<Subject> slist=fDao.getAllSubject();
		Questions quesObj=new Questions();
		ModelAndView mv=new ModelAndView("questionSection");
		mv.addObject("subjectList",slist);
		mv.addObject("quesObj", quesObj);
		return mv;
	}

	@RequestMapping(value="/getviewresult")
	public ModelAndView viewResult() {
		ModelAndView mv=new ModelAndView("viewResult");
		return mv;
	}
	@RequestMapping(value="/getnotice")
	public ModelAndView getNotice() {
		ModelAndView mv=new ModelAndView("facultyNotice");
		return mv;
	}
	
	@RequestMapping(value="/addquestion")
	public ServiceResponse addQuestion(@RequestBody Questions quesObj) {
		System.out.println(quesObj);
		fDao.addQuestion(quesObj);
		 ServiceResponse response = new ServiceResponse("success",quesObj);
	        return response;
		
	}
	
	
}
