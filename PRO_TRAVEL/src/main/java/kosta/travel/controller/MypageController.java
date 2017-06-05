package kosta.travel.controller;

import java.security.Provider.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.UsersVO;
import kosta.travel.service.UserService;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {

	@Inject
	UserService userService;
	
	@RequestMapping(value="/usercheckInfo", method=RequestMethod.GET)
	public String userCheckInfo(Model model, HttpSession session) throws Exception{
		System.out.println("userCheckin");
		String u_id = (String)session.getAttribute("u_id");
		System.out.println(u_id);
		UsersVO users = userService.userDetail(u_id);
		model.addAttribute("user", users);
		System.out.println(u_id);
		return "/mypage/mypage_userCheckForm";
	}

	@RequestMapping("/checkPW")
	public String pwCheck(){
		return "/mypage/mypage_checkPW";
	}
}
