package kosta.travel.controller;



import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.RouteVO;
import kosta.travel.service.AccompanyService;


@Controller
@RequestMapping("/accompany/*")
public class AccompanyController{
	
	@Inject
	AccompanyService service;
	
	RouteVO route = new RouteVO();
	
	
	@RequestMapping(value = "/")
	public String main1(Model model/*, HttpSession session*/){
		try {
			model.addAttribute("list" ,service.getUserRoute(/*Integer.parseInt(session.getId())*/ 0 ));
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accompany/Accomp_main";
	}
	
	@RequestMapping(value = "/Accomp_main", method = RequestMethod.GET)
	public String main(Model model /*, HttpSession session*/){
		try {
			model.addAttribute("list" ,service.getUserRoute(/*Integer.parseInt(session.getId())*/ 0 ));
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accompany/Accomp_main";
	}
	       
	       	   
}