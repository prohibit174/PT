package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.domain.UsersVO;
import kosta.travel.service.ProductService;
import kosta.travel.service.UserService;


@Controller
public class AdminController {

	@Inject
	UserService service;
	ProductService productService;
	
	@RequestMapping("/adminLogin")
	public String admin_home(){
		return "/mypage_admin/admin_home";
	}
	
	@RequestMapping("/userList")
	public String userList(Model model) throws Exception{
		List<UsersVO> userList = service.userAll();
		model.addAttribute("userList", userList);
		return "/mypage_admin/admin_userList";
	}
	
	@RequestMapping(value="/yellowCard{u_id}", method=RequestMethod.GET)
	public String yellowcard(@PathVariable String u_id) throws Exception{
		UsersVO users = service.userDetail(u_id);
		service.yellowCard(users);
		System.out.println("u_id"+u_id);
		return "redirect:/userList";
	}
	
	@RequestMapping(value="/userDetail", method=RequestMethod.GET)
	public String userDetail(@RequestParam("u_id") String u_id, Model model) throws Exception{
		UsersVO users = service.userDetail(u_id);
		System.out.println(u_id);
		model.addAttribute("user", users);
		return "/mypage_admin/admin_userDetail";
	}
	
	@RequestMapping("/product_list")
	public String productDetail(@ModelAttribute("cri") SearchCriteria cri, 
			Model model, ProductVO product) throws Exception{

		/*model.addAttribute("list", service.listCriteria(cri));*/
		System.out.println(product.toString());
		model.addAttribute("list", productService.listSearchCriteria(cri));
		
	
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		/*pageMaker.setTotalCount(service.listCountCriteria(cri));*/
		pageMaker.setTotalCount(productService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		return "/mypage_admin/admin_productList";
	}
	
}
