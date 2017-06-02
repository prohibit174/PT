package kosta.travel.controller;

import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
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
	public void loginActionPOST(LoginDTO dto, HttpSession session, Model model, HttpServletResponse response) throws Exception{
		UsersVO vo = service.login(dto);
		System.out.println(vo);
		PrintWriter out = response.getWriter();
		
			 if(vo==null){ // 로그인 실패
		         response.setContentType("text/html;charset=utf-8");
		         out.println("<script>");
		         out.println("alert('Please Check your ID or Password');");
		         out.println("location.href='/login_form';");
		         out.println("</script>");
		         
		         out.close();
		         return;
		      }
			 model.addAttribute("usersVO", vo);
		}
		
		
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String test(){
		return "test";
	}
}
