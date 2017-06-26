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
import kosta.travel.domain.DeclareVO;
import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.domain.UsersVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.DeclareService;
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
	
	@Inject
	DeclareService declareService;
	
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
	
	//product list�븞�맖.
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
		//attribute�븯�굹濡� �꽆湲곕㈃ �궎媛믪� �겢�옒�뒪�씠由�(泥リ��옄�냼臾몄옄)�쑝濡� �뱾�뼱媛�
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
	
	@RequestMapping(value="/adminDeclare", method=RequestMethod.GET)
	public String adminDeclare(Model model, HttpServletRequest request) throws Exception{
		List<DeclareVO> waitList = declareService.waitDeclare();
		model.addAttribute("waitList", waitList);
		return "mypage_admin/admin_waitDeclaration";
	}
	
	@RequestMapping(value="/acceptDeclareList", method=RequestMethod.GET)
	public String acceptDeclare(Model model, HttpServletRequest request) throws Exception{
		List<DeclareVO> acceptList = declareService.acceptDeclare();
		model.addAttribute("acceptList", acceptList);
		return "mypage_admin/admin_acceptDeclaration";
	}
	
	@RequestMapping(value="/rejectDeclareList", method=RequestMethod.GET)
	public String rejectDeclare(Model model, HttpServletRequest request) throws Exception{
		List<DeclareVO> rejectList = declareService.rejectDeclare();
		model.addAttribute("rejectList", rejectList);
		return "mypage_admin/admin_rejectDeclaration";
	}
	
	@RequestMapping(value="/accept", method=RequestMethod.GET)
	public String accept(Model model, @RequestParam("d_num") int d_num) throws Exception{
		declareService.accept(d_num);
		return "redirect:/acceptDeclareList";
	}
	
	@RequestMapping(value="/reject", method=RequestMethod.GET)
	public String reject(Model model, @RequestParam("d_num") int d_num) throws Exception{
		declareService.reject(d_num);
		return "redirect:/rejectDeclareList";
	}
	
	@RequestMapping(value = "/detailContent", method = RequestMethod.POST)
	public String detailContent(Model model, @RequestParam("d_num")  int d_num) throws Exception {
		DeclareVO vo = declareService.detailDeclare(d_num);
		model.addAttribute("vo", vo);
	
		return "/mypage_admin/admin_popupContentDeclaration";
	}
	
	@RequestMapping(value = "/fileview", method = RequestMethod.POST)
	public String fileview(Model model, @RequestParam("d_num")  int d_num) throws Exception {
		DeclareVO vo = declareService.detailDeclare(d_num);
		model.addAttribute("vo", vo);
	
		return "/mypage_admin/admin_popupFileDeclaration";
	}
	

	
}
