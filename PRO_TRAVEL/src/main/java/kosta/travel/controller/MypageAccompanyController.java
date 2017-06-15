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
public class MypageAccompanyController {
	
	@Inject
	private ProductService service;
	
	@RequestMapping(value="/mypage_accom_request_received", method=RequestMethod.GET)
	public String productRequest(Model model, HttpSession session) throws Exception{

		return "/mypage/mypage_accom_request_received";
	}
	
	
	@RequestMapping(value="/mypage_accom_request_sent", method=RequestMethod.GET)
	public String product_requestAccept(Model model, Product_RequestVO proReq, HttpSession session) throws Exception{

		return "/mypage/mypage_accom_request_sent";
	}
	
		
	

}
