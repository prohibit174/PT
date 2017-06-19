package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kosta.travel.domain.BlogVO;
import kosta.travel.service.BlogService;

@Controller
@RequestMapping("/blog/*")
public class BlogController {
	
	@Inject
	BlogService service;

	@RequestMapping("/blogMain")
	public void blogMain(Model model) throws Exception {
		List<BlogVO> blogList = service.blogList();
		model.addAttribute("blogVO", blogList);
	}
}
