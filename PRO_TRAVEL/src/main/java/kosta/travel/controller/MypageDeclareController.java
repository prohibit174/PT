package kosta.travel.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.DeclareVO;
import kosta.travel.service.DeclareService;


@Controller
@RequestMapping("/mypage/*")
public class MypageDeclareController {
	
	@Inject
	private DeclareService service;
	
	
	@RequestMapping(value="/declare", method=RequestMethod.GET)
	public String carpoolCheck(Model model,  HttpSession session) throws Exception{
		String u_id = (String)session.getAttribute("login");
		
/*		List<DeclareVO> list = service.myDeclaration(u_id);
		
		model.addAttribute("list", list);*/
		
		List<DeclareVO> list = service.myDeclare(u_id);
		model.addAttribute("list", list);
		
		return "/mypage/mypage_declareList";
	}
	

}
