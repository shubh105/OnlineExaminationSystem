package com.cdac.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cdac.Iservices.IHomeService;
import com.cdac.models.Admin;
import com.cdac.models.Candidate;

@Controller
public class HomeController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	IHomeService hservice;

	@RequestMapping(value="/")
	public String Home() {
		return "HomePage";
	}
	
	@RequestMapping(value="getresgisterpage")
	public String GetAdminRegister(ModelMap map) {
		
		map.addAttribute("adminObj" , new Admin());
		return "RegisterPage";
	}
	
	@RequestMapping(value="adminresgister")
	public String AdminRegister(@ModelAttribute("adminObj") Admin adminObj) {
		
		boolean b=hservice.RegisterAdmin(adminObj);
		System.out.println(b);
		return "HomePage";
	}
	
	@RequestMapping(value="getadminlogin",method=RequestMethod.GET)
	public ModelAndView GetAdminDashboard() {
		
		ModelAndView mv= new ModelAndView("AdminLogin");
		return mv;
	}
	
	@RequestMapping(value="/getadmindashboard",method=RequestMethod.POST)
	public String GetAdminHome(@RequestParam("email") String email,@RequestParam("password") String password,ModelMap map) {
		
		Admin obj= hservice.ValidateAdmin(email, password);
		if(obj!=null) {
			session.setAttribute("adminObj", obj);
			map.addAttribute("adminObj",obj);
			return "AdminDashboard";
		}
		else {
			map.addAttribute("msg", "No User Found");
			return "AdminLogin";
		}
		
	}
	
	@RequestMapping(value="/signout")
	public String AdminSignOut() {
		return "HomePage";
	}
	
	@RequestMapping(value="getcandidatelogin")
	public ModelAndView GetCandidateLogin() {
		
		ModelAndView mv= new ModelAndView("CandidateLogin");
		return mv;
	}
	
	@RequestMapping(value="/getcandidatedashboard",method=RequestMethod.POST)
	public String GetCandidateHome(@RequestParam("email") String email,@RequestParam("password") String password,ModelMap map) {
		
		Candidate obj= hservice.ValidateCandidate(email, password);
		if(obj!=null) {
			session.setAttribute("candidateObj", obj);
			map.addAttribute("candidateObj",obj);
			return "CandidateDashboard";
		}
		else {
			map.addAttribute("msg", "No User Found");
			return "CandidateLogin";
		}
		
	}
	
}
