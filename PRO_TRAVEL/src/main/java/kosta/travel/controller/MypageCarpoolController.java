package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.CarpoolVO;
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
		
		return "/mypage/mypage_carpoolRead";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("c_num") int c_num, RedirectAttributes rttr) throws Exception {
		service.remove(c_num);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/mypage/mypage_carpoolCheck";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() throws Exception {

		return "/mypage/index";
	}

}
