package kosta.travel.controller;

import java.security.Provider.Service;
import java.util.Enumeration;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
		
		/*// 세션값들을 확인해주는 코드
		   Enumeration se = session.getAttributeNames();
		   
		   while(se.hasMoreElements()){
		    String getse = se.nextElement()+"";
		    System.out.println("@@@@@@@ session : "+getse+" : "+session.getAttribute(getse));
		   }
*/
		
		String u_id = (String)session.getAttribute("login");
		System.out.println(u_id);
		UsersVO users = userService.userDetail(u_id);
		model.addAttribute("user", users);
		return "/mypage/mypage_userCheckForm";
	}
	
	//Once update Information, and return to information check page
	@RequestMapping(value="/usercheckInfo", method=RequestMethod.POST)
	public String updateUserInfo(UsersVO users, HttpSession session) throws Exception{
		String u_id = (String)session.getAttribute("login");
		users.setU_id(u_id);
		userService.userUpdate(users);
		
		return "redirect:/mypage/usercheckInfo";
	}

	
	@RequestMapping(value="/checkPW", method=RequestMethod.GET)
	public String pwCheck(){
		return "/mypage/mypage_checkPW";
	}
	
	@RequestMapping(value="/checkPW", method=RequestMethod.POST)
	public String pwCheckPost(HttpSession session, HttpServletRequest request, @RequestParam("u_pwd") String u_pwd, Model model) throws Exception{
		String u_id = (String)session.getAttribute("login");
		UsersVO users = userService.userDetail(u_id);
		System.out.println(u_id + u_pwd);
		
		boolean result = userService.checkPw(u_id, u_pwd);
		System.out.println("controller "+result);
		if(result==true){
			model.addAttribute("user", users);
			return "/mypage/mypage_userUpdateForm";
		}else{
			return "/mypage/mypage_failCheckPW";
		}
	}
	
	@RequestMapping(value = "/withdrawal", method=RequestMethod.GET)
	public String withdrawlPW(){
		return "/mypage/mypage_userWithdrawal";
	}
	
	@RequestMapping(value = "/withdrawal", method=RequestMethod.POST)
	public String withdrawal(HttpSession session, HttpServletRequest request, @RequestParam("u_pwd") String u_pwd, Model model) throws Exception{
		String u_id = (String)session.getAttribute("login");
		UsersVO users = userService.userDetail(u_id);
		//get user information
		
		boolean result = userService.checkPw(u_id, u_pwd);
		
		if(result==true){
			model.addAttribute("u_pwd", u_pwd);
			//transfer PWD
			return "/mypage/mypage_confirmLeave";
		}else{
			return "/mypage/mypage_failCheckPW";
		}
		
	}
	
	@RequestMapping()
	public String doneWithdrawal(HttpSession session, HttpServletRequest request, @RequestParam("u_pwd") String u_pwd){
		String u_id = (String)session.getAttribute("login");
		return "/home";
	}
}
