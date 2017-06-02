package kosta.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/join/*")
public class JoinController {

	@RequestMapping(value="/joinform", method=RequestMethod.GET)
	public String Joinform(){
		return "/join/joinform";
	}
	
	@RequestMapping(value="/joinform", method=RequestMethod.POST)
	public String JoinUser(Model model){
		model.addAttribute("User", model);
		return "";
	}
	
	@RequestMapping("/terms_conditions")
	public String terms_conditions(){
		return "/join/terms_conditions";
	}
	
	@RequestMapping("/privacy_policy")
	public String privacy_policy(){
		return "/join/privacy_policy";
	}
}
