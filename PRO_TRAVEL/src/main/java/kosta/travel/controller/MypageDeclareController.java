package kosta.travel.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/mypage/*")
public class MypageDeclareController {
	
	
	@RequestMapping(value="/declare", method=RequestMethod.GET)
	public String carpoolCheck(Model model,  HttpSession session) throws Exception{
		String u_id = (String)session.getAttribute("login");
		
		return "/mypage/mypage_declareList";
	}
	

}
