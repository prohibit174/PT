package kosta.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.service.CarpoolService;

@Controller
@RequestMapping("/carpool/*")
public class CarpoolController {	
	
	@Inject
	private CarpoolService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String registerGET() throws Exception {
		return "/carpool/main";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET(CarpoolVO carpool, Model model) throws Exception {
		return "/carpool/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(CarpoolVO carpool, HttpSession session) throws Exception {
		System.out.println("들어오냐");
		carpool.setU_id((String)session.getAttribute("login"));
		carpool.setC_num(service.maxSelect()+1);
		
		service.regist(carpool);
		
		
		return "redirect:/carpool/listAll";
	}
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String listAll(Model model) throws Exception {
		model.addAttribute("list", service.listAll());
		
		return "/carpool/list";
	}
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("c_num") int c_num, Model model) throws Exception {
		model.addAttribute(service.read(c_num));
		
		return "/carpool/read";
	}
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam("c_num") int c_num, RedirectAttributes rttr) throws Exception {
		service.remove(c_num);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/carpool/listAll";
	}

	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String request(@RequestParam("c_num") int c_num, RedirectAttributes rttr) throws Exception {

		service.remove(c_num);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/mypage/carpoolCheck";
		
	}
	

	


}




