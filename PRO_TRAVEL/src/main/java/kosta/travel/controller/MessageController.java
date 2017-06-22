package kosta.travel.controller;



import java.util.List;

import javax.inject.Inject;
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
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model,@RequestParam("u_id_recipient")String u_id_recipient) throws Exception {
		System.out.println("controller main method in");
		System.out.println(u_id_recipient);
		List<MessageVO> list = service.list(u_id_recipient);
		System.out.println("print_list");
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i).getM_num());
		}
		model.addAttribute("list", list);
		return "/message/m_main";
	}
	
	@RequestMapping(value = "/write_message", method = RequestMethod.GET)
	public String write() throws Exception {
		return "/message/write_message";
	}
	
	@RequestMapping(value = "/detail_message", method = RequestMethod.GET)
	public String detailGET(Model model,@RequestParam("m_num")int m_num) throws Exception{
		System.out.println("detail_message get method call");
		MessageVO vo = service.detail_message(m_num);
		System.out.println(vo.getM_num());
		
		
		
		model.addAttribute("vo", vo);
		return "/message/m_main";
	}
	
	
	
	@RequestMapping(value = "/detail_message", method = RequestMethod.POST)
	public String detailPOST(Model model,@RequestParam("m_num")int m_num)throws Exception {
		System.out.println("detail_message post method call");
		MessageVO vo = service.detail_message(m_num);
		System.out.println(vo.toString());
		
		service.message_update(m_num);
		
		model.addAttribute("vo", vo);
		return "/message/detail_message";
	}
	
	@RequestMapping(value = "/resend_message", method = RequestMethod.POST)
	public String resend_message(Model model,@RequestParam("u_id_sender")String u_id_sender)throws Exception {
		System.out.println("resend_message post method call");
		
		model.addAttribute("u_id", u_id_sender);
		
		return "/message/resend_message";
	}
	
	@RequestMapping(value = "/detail_message2", method = RequestMethod.POST)
	public String detailPOST2(Model model,@RequestParam("m_num")int m_num)throws Exception {
		System.out.println("detail_message post method call");
		MessageVO vo = service.detail_message(m_num);
		System.out.println(vo.toString());
		
		//service.message_update(m_num);
		
		model.addAttribute("vo", vo);
		return "/message/detail_message";
	}
	
	@RequestMapping(value = "/received_message", method = RequestMethod.GET)
	public String received_message(Model model,String u_id)throws Exception {
		System.out.println("received_message get method call");
		
		List<MessageVO> list = service.list_received(u_id);
		
		model.addAttribute("list", list);
		return "/message/m_main";
	}
	
	@RequestMapping(value = "/send_message", method = RequestMethod.GET)
	public String send_message(Model model,String u_id)throws Exception {
		System.out.println("send_message get method call");
		
		List<MessageVO> list1 = service.list_send(u_id);
		
		model.addAttribute("list1", list1);
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
