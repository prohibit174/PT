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
		model.addAttribute("list_o", service.listProductAccept(u_id));
		model.addAttribute("list_x", service.listProductRejected(u_id));
		
		
		
		
		List<Product_RequestVO> list = service.listProductRequest(u_id);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getPr_reqnum());
		}
		
		return "/mypage/mypage_productRequest";
	}
	
	
	@RequestMapping(value="/product_requestAccept", method=RequestMethod.GET)
	public String product_requestAccept(Model model, Product_RequestVO proReq, HttpSession session) throws Exception{
		System.out.println("product_requestAccept method call");
		
		String u_id = (String)session.getAttribute("login");
		service.updateAccept(proReq);
		
		/*model.addAttribute("list_o", service.listProductAccept(u_id));*/

		/*
		List<Product_RequestVO> list = service.listProductRequest(u_id);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getPr_reqnum());
		}
		*/
		return "redirect:/mypage/product_request";
	}
	
	
	
	@RequestMapping(value="/product_requestReject", method=RequestMethod.GET)
	public String product_requestReject(Model model, Product_RequestVO proReq, HttpSession session) throws Exception{
		System.out.println("product_requestReject method call");
		
		String u_id = (String)session.getAttribute("login");
		service.updateReject(proReq);
		
		/*model.addAttribute("list_o", service.listProductAccept(u_id));*/

		/*
		List<Product_RequestVO> list = service.listProductRequest(u_id);
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getPr_reqnum());
		}
		*/
		return "redirect:/mypage/product_request";
	}
	
	
	@RequestMapping(value="/product_myRequestList", method=RequestMethod.GET)
	public String product_MyRequestList(Model model, Product_RequestVO proReq, HttpSession session) throws Exception{
		
		
		String u_id = (String)session.getAttribute("login");
		
		
		model.addAttribute("Myreq",service.MyRequestList(u_id));
		model.addAttribute("list_c",service.listProductCanceled(u_id));
		
		return "/mypage/mypage_myRequestList";
	}
	
	

	
	@RequestMapping(value="/product_requestCancel", method=RequestMethod.GET)
	public String product_requestCancel(Model model, Product_RequestVO proReq, HttpSession session) throws Exception{
		System.out.println("product_requestReject method call");
		
		String u_id = (String)session.getAttribute("login");
		service.updateCancel(proReq);
		
		
		return "redirect:/mypage/product_myRequestList";
	}
	
	
	
	
	

}
