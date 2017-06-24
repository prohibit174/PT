package kosta.travel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.DeclareVO;
import kosta.travel.service.DeclareService;

@Controller
@RequestMapping("/declare/*")
public class DeclareController {

	@Inject
	private DeclareService service;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String declare_main(){
		return "declaration/declare_main";
	}
	
	@RequestMapping(value="/normal", method=RequestMethod.POST)
	public String declare_insert(DeclareVO vo, HttpSession session) throws Exception{
		vo.setD_big("normal");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
		return "declaration/declare_main";
	}
	
	@RequestMapping(value="/accompany", method=RequestMethod.POST)
	public String declare_insert2(DeclareVO vo, HttpSession session) throws Exception{
		vo.setD_big("accompany");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
		return "declaration/declare_main";
	}
	
	@RequestMapping(value="/carpool", method=RequestMethod.POST)
	public String declare_insert3(DeclareVO vo, HttpSession session) throws Exception{
		vo.setD_big("carpool");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
		return "declaration/declare_main";
	}
}
