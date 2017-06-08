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
public class MypageProductController {
	
	@Inject
	private CarpoolService service;
	
	@RequestMapping(value="/product_request", method=RequestMethod.GET)
	public String productRequest(Model model,  HttpSession session) throws Exception{
		
		
		return "/mypage/mypage_productRequest";
	}

}
