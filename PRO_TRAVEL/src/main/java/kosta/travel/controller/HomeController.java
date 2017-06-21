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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.MessageService;

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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session)throws Exception {
		if(session.getAttribute("login")!=null){
		System.out.println("noRead_message GET method call");
		System.out.println("id: "+session.getAttribute("login").toString());
		Integer noReadMessage = service.noRead_message(session.getAttribute("login").toString());
		session.setAttribute("noReadMessage", noReadMessage);
		System.out.println("noReadMessage: "+noReadMessage);
		//model.addAttribute("noReadMessage",noReadMessage);
		}
		
		//카풀부분
		model.addAttribute("carpoolcount", carpoolService.count());
		
		List<Carpool_ListVO> carpoolAll = carpoolService.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		
		return "home";
	}
	
	@RequestMapping(value = "/dialog", method = RequestMethod.GET)
	public String dialog() {

		return "dialog";
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
}
