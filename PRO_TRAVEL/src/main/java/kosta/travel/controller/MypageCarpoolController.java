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

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.service.CarpoolService;

@Controller
@RequestMapping("/mypage/*")
public class MypageCarpoolController {
	
	@Inject
	private CarpoolService service;
	
	@RequestMapping(value="/carpoolCheck", method=RequestMethod.GET)
	public String carpoolCheck(Model model,  HttpSession session) throws Exception{
		String u_id = (String)session.getAttribute("login");
		
		List<CarpoolVO> list = service.myMakeCarpool(u_id);
		model.addAttribute("list", list);
		
		List<CarpoolRequestUser>requestList = service.requestAll(u_id);
		model.addAttribute("requestList", requestList);
		
		
		return "/mypage/mypage_carpoolCheck";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("c_num") int c_num, Model model, HttpServletRequest request) throws Exception {
		//attribute하나로 넘기면 키값은 클래스이름(첫글자소문자)으로 들어감
		model.addAttribute(service.read(c_num));
		
		List<CarpoolRequestUser>list = service.myMakeRequest(c_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage_carpoolRead";
	}
	
	@RequestMapping(value = "/requestRead", method = RequestMethod.GET)
	public String requestRead(@RequestParam("cr_num") int cr_num, Model model, CarpoolRequestUser carpool, HttpServletRequest request) throws Exception {
		carpool = service.readRequest(cr_num);
		model.addAttribute("carpool", carpool);
		
		return "/mypage/mypage_carpoolRequestRead";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("c_num") int c_num) throws Exception {
		service.remove(c_num);
		
		return "redirect:/mypage/carpoolCheck";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam("c_num") int c_num) throws Exception {
		
		return "/mypage/mypage_carpoolModify";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(CarpoolVO carpool, @RequestParam("c_num") int c_num) throws Exception {
		service.modify(carpool);
		return "redirect:/mypage/carpoolCheck";
	}
	
	@RequestMapping(value = "/accept", method = RequestMethod.GET)
	public String accept(Carpool_RequestVO carpoolRequest, @RequestParam("cr_num") int cr_num,@RequestParam("c_num") int c_num ) throws Exception {
		System.out.println(cr_num);
		System.out.println(c_num);
	
		service.accept(carpoolRequest, c_num);
		
		return "redirect:/mypage/carpoolCheck";
	}
	
	@RequestMapping(value = "/reject", method = RequestMethod.GET)
	public String reject(Carpool_RequestVO carpoolRequest, @RequestParam("cr_num") int cr_num) throws Exception {
		
		
		return "redirect:/mypage/carpoolCheck";
	}
	

}
