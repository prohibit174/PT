package kosta.travel.controller;

import javax.annotation.Resource;
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

import kosta.travel.domain.Criteria;
import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
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

	@RequestMapping(value = "/product_detailPage", method = RequestMethod.GET)
	public void product_detailPage(@RequestParam("p_num") String p_num, @ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {
		ProductVO product =service.detailProduct(p_num);
		model.addAttribute("product", product);
	}
	
	
	@RequestMapping(value="/product_deletePage", method=RequestMethod.POST)
	public String product_deletePage(@RequestParam("p_num") String p_num,
			Criteria cri, RedirectAttributes rttr) throws Exception{
		service.deleteProduct(p_num);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/product/product_listPage";
		
	}

	
	@RequestMapping(value="/product_updatePage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("p_num") String p_num,
			@ModelAttribute("cri") Criteria cri, Model model)throws Exception{
		model.addAttribute(service.detailProduct(p_num));
		
	}
	
	@RequestMapping(value="/product_updatePage", method = RequestMethod.POST)
	public String modifyPagingPOST(ProductVO product, Criteria cri,
			RedirectAttributes rttr)throws Exception{
		service.updateProduct(product);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/product/product_listPage";
		
	}

}
