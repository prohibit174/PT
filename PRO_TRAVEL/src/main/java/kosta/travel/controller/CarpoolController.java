package kosta.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.service.CarpoolService;

@Controller
@RequestMapping("/carpool/*")
public class CarpoolController {
	
	private CarpoolService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET(CarpoolVO carpool, Model model) throws Exception {
		return "/carpool/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(CarpoolVO carpool, Model model) throws Exception {
		service.regist(carpool);
		
		model.addAttribute("result", "success");
		
		return "redirect:/carpool/listAll";
	}
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public void listAll() {
	}

}
