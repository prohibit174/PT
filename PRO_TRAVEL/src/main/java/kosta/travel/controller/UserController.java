package kosta.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;
import kosta.travel.service.UserService;

@Controller
public class UserController {

	@Inject
	private UserService service;
	
	@RequestMapping(value="/loginAction", method=RequestMethod.GET)
	public void loginActionGET(@ModelAttribute("dto") LoginDTO dto){
		
	}
	
	@RequestMapping(value="/loginAction", method=RequestMethod.POST)
	public void loginActionPOST(LoginDTO dto, HttpSession session, Model model) throws Exception{
		UsersVO vo = service.login(dto);
		System.out.println(vo);
		if(vo == null){
			return;
		}
		model.addAttribute("usersVO", vo);
	}
}
