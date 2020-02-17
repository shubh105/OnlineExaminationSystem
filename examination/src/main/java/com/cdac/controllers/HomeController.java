 package com.cdac.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.daos.UserDao;
import com.cdac.models.Faculty;
import com.cdac.models.Student;

@Controller
public class HomeController {
	
	@Autowired 
	HttpSession session;

	@Autowired
	UserDao uDao;
	
	  @RequestMapping(value= "/") 
	  public String home() {
	  
		  return "homepage";
	  }
	 
	@RequestMapping(value = "/getloginpage",method=RequestMethod.GET)
	public String getlogin() {
        
		return "login";
	}
	
	@RequestMapping(value= "/welcome" ,method=RequestMethod.POST)
	public String userValidation(@RequestParam String email, @RequestParam String pass, ModelMap map) {
		
		Student stObj= uDao.validateStudent(email, pass);
		Faculty ftObj= uDao.validateFaculty(email, pass);
		if(stObj!=null) {
			session.setAttribute("stObj", stObj);
			map.addAttribute("stObj",stObj);
			return "candidateHome";
		}
		else if(ftObj!=null) {
				session.setAttribute("ftObj", ftObj);
				if(ftObj.getVerify().equals("1")) {
					map.addAttribute("ftObj", ftObj);
					return "facultyHome";
					
				}
				else {
					map.addAttribute("msg1", "Not Yet Verified");
					return "login";
					
				}
			}
		else {
			map.addAttribute("msg2", "No User Found");
			return "login";
		}
			
}
	  
	@RequestMapping(value= "/getstudentsignuppage")
	public String getstuRegisterPage(ModelMap map) {
		map.addAttribute("stuObj" , new Student());
		return "studentRegister";
		
	}
	
	@RequestMapping(value="/addstudent" , method=RequestMethod.POST)
	public String userRegister(@ModelAttribute("stuObj") Student stuObj) {
		
		boolean b=uDao.studentRegister(stuObj);
		System.out.println(b);
		return "homepage";
	}
	
	@RequestMapping(value= "/getfacultysignuppage")
	public String getfacultyRegisterPage(ModelMap map) {
		map.addAttribute("facultyObj" , new Faculty());
		return "facultyRegister";
		
	}
	
	@RequestMapping("addfaculty")
	public String facultyRegister(@ModelAttribute("facultyObj") Faculty facultyObj) {
		uDao.facultyRegister(facultyObj);
		return "homepage";
		
	}
	@RequestMapping(value="/homepage")
	public String getHomePage() {
		return "homepage";
	}
	
	@RequestMapping(value= "/candidateLogOut")
	public String logOutCadidate() {
		
		session.removeAttribute("uObj");
		session.invalidate();
		return "homepage";
	}
	
	@RequestMapping(value= "/facultyLogOut")
	public String logOutFaculty() {
		
		session.removeAttribute("uObj");
		session.invalidate();
		return "homepage";
	}
	
	
}