package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.CarpoolVO;
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
		
		
		return "/mypage/mypage_carpoolCheck";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("c_num") int c_num, Model model) throws Exception {
		model.addAttribute(service.read(c_num));
		
		
		List<Carpool_RequestVO> list = service.myMakeRequest(c_num);
		model.addAttribute("list", list);
		
		return "/mypage/mypage_carpoolRead";
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
	public String accept(Carpool_RequestVO carpoolRequest, @RequestParam("cr_num") int cr_num) throws Exception {
		System.out.println(cr_num);
		service.updateRequest(carpoolRequest);
		
		return "redirect:/mypage/carpoolCheck";
	}
	


}
