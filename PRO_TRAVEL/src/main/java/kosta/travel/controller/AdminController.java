package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.travel.domain.UsersVO;
import kosta.travel.service.UserService;


@Controller
public class AdminController {

	@Inject
	UserService service;
	
	@RequestMapping("/adminLogin")
	public String admin_home(){
		return "/mypage_admin/admin_home";
	}
	
	@RequestMapping("/userList")
	public String userList(Model model) throws Exception{
		List<UsersVO> userList = service.userAll();
		model.addAttribute("userList", userList);
		return "/mypage_admin/admin_userList";
	}
}
