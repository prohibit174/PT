package kosta.travel.controller;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.service.CarpoolService;

@Controller
@RequestMapping("/carpool/*")
public class CarpoolController {	
	
	@Inject
	private CarpoolService service;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model, HttpSession session) throws Exception {
		
		String u_id = (String)session.getAttribute("login");
		List<CarpoolVO> list = service.myMakeCarpool(u_id);
		model.addAttribute("list", list);
		
		
		return "/carpool/test";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String registerGET(Model model, HttpSession session) throws Exception {
		List<Carpool_ListVO> list = service.carpoolAll();
		model.addAttribute("list", list);
		

		return "/carpool/main";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET(CarpoolVO carpool, Model model) throws Exception {
		return "/carpool/register";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(CarpoolVO carpool, HttpSession session) throws Exception {
		carpool.setU_id((String)session.getAttribute("login"));
		carpool.setC_num(service.maxSelect()+1);
		
		service.regist(carpool);
		
		
		return "redirect:/mypage/carpoolCheck";
	}
	
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String listAll(Model model, HttpServletRequest request) throws Exception {
		List<Carpool_ListVO> carpoolAll = service.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		

		return "/carpool/list";
	}
		
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String request(Carpool_RequestVO carpoolRequest, @RequestParam("c_num") int c_num,  HttpSession session) throws Exception {
		
		String id = (String)session.getAttribute("login");
		int cr_num = service.maxSelectRequest()+1;
		
		carpoolRequest.setU_id(id);
		carpoolRequest.setC_num(c_num);
		carpoolRequest.setCr_num(cr_num);
		
		service.registRequest(carpoolRequest);
		
		
		return "redirect:/mypage/carpoolCheck";
		
	}
	
	@RequestMapping(value="/more_register", method = RequestMethod.POST)
	public void more(@RequestParam(value = "count", required = false) String count, HttpServletResponse response, HttpSession session, Model model) throws Exception{
		int int_count = Integer.parseInt(count) + 2;
		session.setAttribute("count", int_count);
		response.getWriter().print(int_count);
	}
	
	
	@RequestMapping(value="/fold_register", method = RequestMethod.POST)
	public void fold(@RequestParam(value = "count", required = false) String count, HttpServletResponse response, HttpSession session, Model model) throws Exception{
		int int_count = Integer.parseInt(count) - 2;
		session.setAttribute("count", int_count);
		response.getWriter().print(int_count);
	}
/*	 @RequestMapping(value="/more_register", method = RequestMethod.POST)
	   public ResponseEntity<String> more(@RequestBody String count, HttpSession session, Model model) throws Exception{
	      count = count.replaceAll("[^0-9]","");
	      int count_integer = Integer.parseInt(count) + 2;
	      model.addAttribute("count",count_integer);
	      session.setAttribute("count", count_integer);
	      ResponseEntity<String> ent = null;
	      return ent;
	   }
	 
	 @RequestMapping(value="/fold_register", method = RequestMethod.POST)
	   public ResponseEntity<String> fold(@RequestBody String count, HttpSession session) throws Exception{
	      count = count.replaceAll("[^0-9]","");
	      int count_integer = Integer.parseInt(count) - 2;
	      session.setAttribute("count", count_integer);
	      ResponseEntity<String> ent = null;
	      return ent;
	   }*/
}




