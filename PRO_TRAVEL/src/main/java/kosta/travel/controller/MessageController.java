package kosta.travel.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.MessageVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.MessageService;

@Controller
@RequestMapping("/message/*")
public class MessageController {
	
	@Inject
	private MessageService service;
	
	@RequestMapping(value = "/main")
	public String main(Model model, @RequestParam("u_id_recipient") String u_id_recipient) throws Exception {
		System.out.println("controller main method in");

		System.out.println("id: "+u_id_recipient);
		List<MessageVO> list = service.list(u_id_recipient);
		System.out.println("print_list");
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getM_num());
		}
		model.addAttribute("list", list);
		return "/message/m_main";
	}
	
	@RequestMapping(value = "/write_message", method = RequestMethod.GET)
	public String write() {
		return "/message/write_message";
	}
	
	@RequestMapping(value = "/detail_message", method = RequestMethod.GET)
	public String detailGET() {
		System.out.println("detail_message get method call");
		
		return "/message/m_main";
	}
	
	@RequestMapping(value = "/detail_message", method = RequestMethod.POST)
	public String detailPOST() {
		System.out.println("detail_message post method call");
		
		return "/message/m_main";
	}
	
	@RequestMapping(value="/insert", method=RequestMethod.POST)
	public String insert(MessageVO vo, Model model) throws Exception{
		System.out.println("insert method call");
		
		if(service.max_num()==null){
			vo.setM_num(1);
		}
		vo.setM_num(service.max_num() + 1);
		
		service.message_insert(vo);
		
		return "/message/test";
	}

}
