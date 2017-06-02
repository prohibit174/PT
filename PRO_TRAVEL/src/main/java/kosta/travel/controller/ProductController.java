package kosta.travel.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.ProductVO;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {
		
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);


		@Inject
		private ProductService service;
	
		@RequestMapping(value = "/product_register", method = RequestMethod.GET)
		public String product_registerGET()throws Exception {
			System.out.println("registerget method call");
			
			return "/product/product_register";
		}
		
		@RequestMapping(value = "/product_register", method = RequestMethod.POST)
		public String product_registerPOST(ProductVO product, RedirectAttributes rttr)throws Exception {
			System.out.println("registerpost method call");
			logger.info(product.toString());
			service.insert(product);
			
			
			return "redirect:/product/product_list";
		}
		
		@RequestMapping(value = "/product_list", method = RequestMethod.GET)
		public String product_list()throws Exception {
			return "/product/product_list";
		}
		
		@RequestMapping(value = "/test", method = RequestMethod.GET)
		public String test()throws Exception {
			return "/product/side";
		}
	
}
