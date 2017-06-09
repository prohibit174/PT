package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/sproduct/*")
public class SearchProductController {
	
		private static final Logger logger = LoggerFactory.getLogger(SearchProductController.class);
		
		@Inject
		private ProductService service;
		
		@RequestMapping(value="/product_list", method=RequestMethod.GET)
		public String product_list(@ModelAttribute("cri") SearchCriteria cri, 
				Model model) throws Exception{
			
			
			
			/*model.addAttribute("list", service.listCriteria(cri));*/
			model.addAttribute("list", service.listSearchCriteria(cri));
			
		
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			
			/*pageMaker.setTotalCount(service.listCountCriteria(cri));*/
			pageMaker.setTotalCount(service.listSearchCount(cri));
			
			model.addAttribute("pageMaker", pageMaker);
			
			return "sproduct/product_list";
		}
		
		
		@RequestMapping(value="/product_detail", method = RequestMethod.GET)
		public void product_detail(@RequestParam("p_num") String p_num,
				@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
			ProductVO product =service.detailProduct(p_num);
			
			model.addAttribute("product", product);
		
		}
		
		
		@RequestMapping(value = "/product_delete", method=RequestMethod.GET)
		public String product_delete(@RequestParam("p_num") String p_num,
				SearchCriteria cri, RedirectAttributes rttr) throws Exception {
			
			service.deleteProduct(p_num);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());
			
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			return "redirect:/sproduct/product_list";
		}
		
		
		
		@RequestMapping(value="/product_update", method = RequestMethod.GET)
		public void modifyPagingGET(String p_num, @ModelAttribute("cri")
				SearchCriteria cri, Model model)throws Exception{
			
			ProductVO product=service.detailProduct(p_num);
			model.addAttribute("product", product);
		
			
		}
		
		@RequestMapping(value="/product_update", method = RequestMethod.POST)
		public String modifyPagingPOST(ProductVO product, SearchCriteria cri,
				RedirectAttributes rttr)throws Exception{
			
			logger.info(cri.toString());
			service.updateProduct(product);
			
			rttr.addAttribute("page", cri.getPage());
			rttr.addAttribute("perPageNum", cri.getPerPageNum());
			rttr.addAttribute("searchType", cri.getSearchType());
			rttr.addAttribute("keyword", cri.getKeyword());
			
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			logger.info(rttr.toString());
			
			return "redirect:/sproduct/product_list";
			
		}
		
		
		@RequestMapping(value="/product_register", method = RequestMethod.GET)
		public void registerGET()throws Exception{
			logger.info("register get......................");
		}
		
		
		@RequestMapping(value="/product_register", method = RequestMethod.POST)
		public String registerPOST(ProductVO product, RedirectAttributes rttr)throws Exception{
			logger.info("register post......................");
			logger.info(product.toString());
			
			service.insert(product);
			
			rttr.addFlashAttribute("msg", "SUCCESS");
			
			//return "/board/success";
			return "redirect:/sproduct/product_list";
		}
		
		
	}


