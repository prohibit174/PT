package kosta.travel.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.PageMaker;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/sproduct/*")
public class SearchProductController {
	
		/*private static final Logger logger = LoggerFactory.getLogger(SearchProductController.class);*/
		
		@Inject
		private ProductService service;
		
		@RequestMapping(value="/product_list", method=RequestMethod.GET)
		public String product_list(@ModelAttribute("cri") SearchCriteria cri, 
				Model model) throws Exception{
			
			/*logger.info(cri.toString());*/
			
			/*model.addAttribute("list", service.listCriteria(cri));*/
			model.addAttribute("list", service.listSearchCriteria(cri));
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			/*pageMaker.setTotalCount(service.listCountCriteria(cri));*/
			pageMaker.setTotalCount(service.listSearchCount(cri));
			
			model.addAttribute("pageMaker", pageMaker);
			
			return "sproduct/product_list";
		}
	}


