package kosta.travel.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.Product_RequestVO;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/mypage/*")
public class MypageProductController {
	
	@Inject
	private ProductService service;
	
	@RequestMapping(value="/product_request", method=RequestMethod.GET)
	public String productRequest(Model model, HttpSession session) throws Exception{
		System.out.println("productRequest method call");
		
		String u_id = (String)session.getAttribute("login");
		model.addAttribute("list", service.listProductRequest(u_id));
		
		List<Product_RequestVO> list = service.listProductRequest(u_id);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getPr_reqnum());
		}
		
		return "/mypage/mypage_productRequest";
	}

}