package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.MessageVO;
import kosta.travel.service.CarpoolService;
import kosta.travel.service.MessageService;

@Controller
@RequestMapping("/message/*")
public class MessageController {
	@Inject
	private MessageService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model) throws Exception {
		List<MessageVO> list = service.list();
		model.addAttribute("list", list);
		return "/message/m_main";
	}
	
	@RequestMapping(value = "/write_message", method = RequestMethod.GET)
	public String write() {
		return "/message/write_message";
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
