package kosta.travel.controller;

import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RequestWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {

		return "home";
	}
	
	@RequestMapping(value = "/dialog", method = RequestMethod.GET)
	public String dialog() {

		return "dialog";
	}

	@RequestMapping(value = "/login_form", method = RequestMethod.GET)
	public String login() {

		return "login_form";
	}
	

	@RequestMapping(value = "/ajax_register", method = RequestMethod.POST)
	public void ajax_register(@RequestParam("start") String start, HttpServletResponse response) throws Exception {
		System.out.println(start);
		response.getWriter().print(start);
	}	

}
