package kosta.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/blog/*")
public class BlogController {

	@RequestMapping("/blogMain")
	public void blogMain(){
		
	}
}