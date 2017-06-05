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

	@RequestMapping(value="/checkPW", method=RequestMethod.GET)
	public String pwCheck(){
		return "/mypage/mypage_checkPW";
	}
	
	@RequestMapping(value="/checkPW", method=RequestMethod.POST)
	public String pwCheckPost(HttpSession session, HttpServletRequest request, @RequestParam("u_pwd") String u_pwd) throws Exception{
		String u_id = (String)session.getAttribute("login");
		System.out.println(u_id + u_pwd);
		
		boolean result = userService.checkPw(u_id, u_pwd);
		return "/mypage/mypage_userCheckForm";
	}
}
