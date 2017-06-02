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
	
	/*@RequestMapping(value="/joinform", method=RequestMethod.POST)
	public Model JoinUser(Model model){
		model.addAttribute("UserInfo", model);
		return "";
	}*/
}
