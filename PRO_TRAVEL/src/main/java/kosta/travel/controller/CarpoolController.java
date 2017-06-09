package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.service.CarpoolService;

@Controller
@RequestMapping("/carpool/*")
public class CarpoolController {	
	
	@Inject
	private CarpoolService service;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model, HttpSession session) throws Exception {
		
		String u_id = (String)session.getAttribute("login");
		List<CarpoolVO> list = service.myMakeCarpool(u_id);
		model.addAttribute("list", list);
		
		
		return "/carpool/test";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String registerGET(Model model) throws Exception {
		model.addAttribute("list", service.listAll());
		
		return "/carpool/main";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET(CarpoolVO carpool, Model model) throws Exception {
		return "/carpool/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(CarpoolVO carpool, HttpSession session) throws Exception {
		carpool.setU_id((String)session.getAttribute("login"));
		carpool.setC_num(service.maxSelect()+1);
		
		service.regist(carpool);
		
		
		return "redirect:/mypage/carpoolCheck";
	}
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String listAll(Model model, HttpServletRequest request) throws Exception {
		List<Carpool_ListVO> carpoolAll = service.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		

		return "/carpool/list";
	}
		
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String request(Carpool_RequestVO carpoolRequest, @RequestParam("c_num") int c_num,  HttpSession session) throws Exception {
		
		String id = (String)session.getAttribute("login");
		int cr_num = service.maxSelectRequest()+1;
		
		carpoolRequest.setU_id(id);
		carpoolRequest.setC_num(c_num);
		carpoolRequest.setCr_num(cr_num);
		
		System.out.println(id);
		System.out.println(cr_num);
		System.out.println(c_num);
		
		service.registRequest(carpoolRequest);
		
		
		return "redirect:/mypage/carpoolCheck";
		
	}
	
}




