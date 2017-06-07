package kosta.travel.controller;




import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

import kosta.travel.domain.RouteList;
import kosta.travel.service.AccompanyService;


@Controller
@RequestMapping("/accompany/*")
public class AccompanyController{
	
	static final Logger logger = LoggerFactory.getLogger(AccompanyController.class);
	
	@Inject
	AccompanyService service;
	
	
	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String main(Model model, HttpSession session){
		
		try {
			model.addAttribute("list" ,service.getUserRoute(session));
			model.addAttribute("allAccompanyList" ,service.getAccompanies());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accompany/Accomp_main";
	}
	
	@RequestMapping(value = "/enroll", method=RequestMethod.GET)
	public String enrollpage(HttpSession session){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accompany/enroll";
	}
	
	
	@RequestMapping(value = "/enroll", method=RequestMethod.POST)
	public String insertRoute(HttpServletRequest req){
		
		if(req.getParameter("json").isEmpty()){
			return "redirect:/accompany/";
		}
		try {
			/*String json = req.getParameter("json").substring(1, req.getParameter("json").length()-1);*/
			ObjectMapper maper = new ObjectMapper();			
				
			RouteList[] list = maper.readValue(req.getParameter("json"), RouteList[].class);
			logger.info("insertRoute controller : "+ list[0].getEventdate());
			/*service.insertRoute(route, (String)session.getAttribute("member_id"));*/
			service.insertRoute(list);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/accompany/";
	}
	
	
	       
	       	   
}