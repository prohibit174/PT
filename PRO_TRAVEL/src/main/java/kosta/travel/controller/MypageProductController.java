package kosta.travel.controller;


import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/mypage/*")
public class MypageProductController {
	
	@Inject
	private ProductService service;
	
	@RequestMapping(value="/product_request", method=RequestMethod.GET)
	public String productRequest(String u_id, Model model) throws Exception{
		
		model.addAttribute("list", service.listProductRequest(u_id));
		
		return "/mypage/mypage_productRequest";
	}

}
