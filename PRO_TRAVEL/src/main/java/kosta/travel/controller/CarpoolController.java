package kosta.travel.controller;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
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
import kosta.travel.domain.UsersVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.UserService;

@Controller
@RequestMapping("/carpool/*")
public class CarpoolController {	
	
	@Inject
	private CarpoolService service;
	
	@Inject
	private UserService userService;
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model, HttpSession session) throws Exception {
		
		List<Carpool_ListVO> carpoolAll = service.carpoolAll();
		model.addAttribute("carpoolAll", carpoolAll);
		
		List<Carpool_ListVO> recommend = service.recommendList();
		model.addAttribute("recommend", recommend);
		
		
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
		
		List<Carpool_ListVO> recommend = service.recommendList();
		model.addAttribute("recommend", recommend);
		

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
	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String user(Model model, @RequestParam("u_id")  String u_id) throws Exception {
		System.out.println("3"+u_id);
		UsersVO user = userService.userDetail(u_id);
		model.addAttribute("user", user);
		model.addAttribute("name", user.getU_name());
		model.addAttribute("birth", user.getU_birth());
		
		return "redirect:/carpool/test";
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




