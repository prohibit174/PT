package kosta.travel.controller;

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

import kosta.travel.service.MessageService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private MessageService service;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpSession session)throws Exception {
		
		if(session.getAttribute("login")!=null){
		System.out.println("noRead_message GET method call");
		System.out.println("id: "+session.getAttribute("login").toString());
		Integer noReadMessage = service.noRead_message(session.getAttribute("login").toString());
		System.out.println("noReadMessage: "+noReadMessage);
		model.addAttribute("noReadMessage",noReadMessage);
		}
		
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
	
	@RequestMapping(value="/declaration", method=RequestMethod.GET)
	public String declare(){
		return "declaration/declare_main";
	}
}
