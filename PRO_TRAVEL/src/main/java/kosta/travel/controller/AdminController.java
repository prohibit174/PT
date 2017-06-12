package kosta.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

	@RequestMapping("/adminLogin")
	public String test_admin(){
		return "/mypage_admin/test_admin";
	}
		
}
