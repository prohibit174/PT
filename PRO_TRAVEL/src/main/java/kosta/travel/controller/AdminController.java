package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.domain.UsersVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.ProductService;
import kosta.travel.service.UserService;


@Controller
public class AdminController {

	@Inject
	UserService service;
	
	@Inject
	ProductService productService;
	
	@Inject
	CarpoolService carpoolService;
	
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
	
	//product list안됨.
	@RequestMapping("/productList")
	public String productList(@ModelAttribute("cri") SearchCriteria cri, 
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
	
	@RequestMapping("/productDetail")
	public String productDetail(@RequestParam("p_num") String p_num, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		ProductVO product =productService.detailProduct(p_num);
		
		model.addAttribute("product", product);
		
		return "/mypage_admin/admin_productDetail";
	}
	
	@RequestMapping(value = "/productDelete", method=RequestMethod.GET)
	public String product_delete(@RequestParam("p_num") String p_num,
			SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		productService.deleteProduct(p_num);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/productList";
	}
	
	
	@RequestMapping("/carpoolList")
	public String carpoolList(Model model, HttpServletRequest request)throws Exception{
		List<Carpool_ListVO> carpoolAll = carpoolService.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		
		return "/mypage_admin/admin_carpoolList";
	}
	
	@RequestMapping(value = "/carpoolDetail", method = RequestMethod.GET)
	public String read(@RequestParam("c_num") int c_num, Model model, HttpServletRequest request) throws Exception {
		//attribute하나로 넘기면 키값은 클래스이름(첫글자소문자)으로 들어감
		model.addAttribute(carpoolService.read(c_num));
		
		List<CarpoolRequestUser>list = carpoolService.myMakeRequest(c_num);
		model.addAttribute("list", list);
		
		return "/mypage_admin/admin_carpoolDetail";
	}
	
	@RequestMapping(value = "/adminRemove", method = RequestMethod.GET)
	public String remove(@RequestParam("c_num") int c_num) throws Exception {
		carpoolService.remove(c_num);
		
		return "redirect:/carpoolList";
	}
}
