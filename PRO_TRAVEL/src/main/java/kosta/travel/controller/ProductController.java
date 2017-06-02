package kosta.travel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/product/*")
public class ProductController {
	
		@RequestMapping(value = "/product_register", method = RequestMethod.GET)
		public String product_register() {
			return "/product/product_register";
		}
		
		@RequestMapping(value = "/product_list", method = RequestMethod.GET)
		public String product_list() {
			return "/product/product_list";
		}
		
		@RequestMapping(value = "/test", method = RequestMethod.GET)
		public String test() {
			return "/product/side";
		}
	

		@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
		public String product_detail() {
			return "/product/product_detail";
		}
}
