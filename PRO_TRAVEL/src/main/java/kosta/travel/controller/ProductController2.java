package kosta.travel.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.PageMaker;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController2 {

	private static final Logger logger = LoggerFactory.getLogger(ProductController2.class);

	@Resource(name = "uploadPath")
	private String uploadPath;
	@Inject
	private ProductService service;

	@RequestMapping(value = "/product_listCri", method = RequestMethod.GET)
	public String product_listCri(Criteria cri, Model model) throws Exception {
		 logger.info("show list Page with Criteria........"); 

		model.addAttribute("list", service.listCriteria(cri));

		return "/product/product_listCri";

	}

	@RequestMapping(value = "/product_listPage", method = RequestMethod.GET)
	public void listPage(Criteria cri, Model model) throws Exception {
		/* logger.info(cri.toString()); */

		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

}
