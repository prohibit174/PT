package kosta.travel.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.UsersVO;
import kosta.travel.service.UserService;

@Controller
@RequestMapping("/join/*")
public class JoinController {

	@Inject
	private UserService service;
	
	@RequestMapping(value="/joinform", method=RequestMethod.GET)
	public String Joinform(){
		return "/join/joinform";
	}
	
	@RequestMapping(value="/joinform", method=RequestMethod.POST)
	public String JoinUser(UsersVO users, Model model)throws Exception{
		service.regist(users);
		model.addAttribute("result", "success");
		return "/home";
	}
	
	@RequestMapping("/terms_conditions")
	public String terms_conditions(){
		return "/join/terms_conditions";
	} 
	
	@RequestMapping("/privacy_policy")
	public String privacy_policy(){
		return "/join/privacy_policy";
	}
	
	@RequestMapping("/IdCheckAction")
	public String idCheck(){
		return "";
	}
	
	
}
