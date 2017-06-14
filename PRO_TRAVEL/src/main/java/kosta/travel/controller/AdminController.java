package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@RequestMapping("/yellowCard")
	public String yellowcard(@RequestParam("u_id") String u_id) throws Exception{
		service.yellowCard(u_id);
		System.out.println("u_id"+u_id);
		return "redirect:/userList";
	}
}
