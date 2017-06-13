package kosta.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/message/*")
public class MessageController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		return "/message/main";
	}
}
