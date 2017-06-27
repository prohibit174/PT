package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.BlogVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.domain.UsersVO;
import kosta.travel.service.AccompanyService;
import kosta.travel.service.BlogService;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.MessageService;
import kosta.travel.service.ProductService;
import kosta.travel.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	private MessageService service;

	@Inject
	private CarpoolService carpoolService;

	@Inject
	private AccompanyService accompanyService;

	@Inject
	private ProductService productService;

	@Inject
	private BlogService blogService;
	
	@Inject
	private UserService userService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session, @ModelAttribute("cri") SearchCriteria cri) throws Exception {
		if (session.getAttribute("login") != null) {
			System.out.println("noRead_message GET method call");
			System.out.println("id: " + session.getAttribute("login").toString());
			Integer noReadMessage = service.noRead_message(session.getAttribute("login").toString());
			session.setAttribute("noReadMessage", noReadMessage);
			System.out.println("noReadMessage: " + noReadMessage);
			// model.addAttribute("noReadMessage",noReadMessage);
		}

		// 移댄�遺�遺�
		model.addAttribute("carpoolcount", carpoolService.count());
		System.out.println("home 吏꾩엯 �쟾");
		model.addAttribute("accompanycount", accompanyService.count());
		

		model.addAttribute("map1", accompanyService.getHomeMap(1));
		model.addAttribute("map2", accompanyService.getHomeMap(2));
		model.addAttribute("map3", accompanyService.getHomeMap(3));
		model.addAttribute("map4", accompanyService.getHomeMap(4));
		model.addAttribute("map5", accompanyService.getHomeMap(5));

		List<Carpool_ListVO> carpoolAll = carpoolService.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		System.out.println("product 吏꾩엯");
		Integer productAll = productService.productAll();
		System.out.println("product: " + productAll);
		model.addAttribute("productAll", productAll);

		Integer blogcount = blogService.blogcount();
		System.out.println("blogcount: " + blogcount);
		model.addAttribute("blogcount", blogcount);

		List<BlogVO> blogList = blogService.blogList();
		model.addAttribute("blogVO", blogList);
		
		
		List<ProductVO> list = productService.listProduct3();
		System.out.println("list.size: "+list.size());
		model.addAttribute("list", list);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		model.addAttribute("pageMaker", pageMaker);

		return "home";
	}

	@RequestMapping(value = "/dialog", method = RequestMethod.GET)
	public String dialog() {

		return "dialog";
	}

	@RequestMapping(value = "/chatting", method = RequestMethod.POST)
	public String chatting(Model model, HttpSession session) {
		System.out.println("chatting controller");
		String id = session.getAttribute("login").toString();
		model.addAttribute("id", id);
		return "/chatting";
	}

	@RequestMapping(value = "/login_form", method = RequestMethod.GET)
	public String login() {

		return "/login_form";
	}

	@RequestMapping(value = "/ajax_register", method = RequestMethod.POST)
	public void ajax_register(@RequestParam("start") String start, HttpServletResponse response) throws Exception {
		System.out.println(start);
		response.getWriter().print(start);
	}
	
	@RequestMapping(value = "/user", method = RequestMethod.POST)
	public String user(Model model, @RequestParam("u_id")  String u_id) throws Exception {
		UsersVO user = userService.userDetail(u_id);
		model.addAttribute("user", user);
	
		return "/userPopup";
	}
}
