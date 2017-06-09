package kosta.travel.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.PageMaker;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.SearchCriteria;
import kosta.travel.service.ProductService;

@Controller
@RequestMapping("/product/*")
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Resource(name = "uploadPath")
	private String uploadPath;
	@Inject
	private ProductService service;
	
	


	@RequestMapping(value = "/product_register", method = RequestMethod.GET)
	public void product_registerGET() throws Exception {
		System.out.println("registerget method call");
	}

	@RequestMapping(value = "/product_register", method = RequestMethod.POST)
	public String product_registerPOST(Model model, ProductVO product,RedirectAttributes rttr) throws Exception {

		System.out.println("registerpost method call");

		logger.info("originalName: " + product.getFile1().getOriginalFilename());

		String savedName = UploadFile(product.getFile1().getOriginalFilename(), product.getFile1().getBytes());

		product.setP_img(savedName);

		logger.info(product.toString());
		service.insert(product);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		try {

			String pattern = savedName.substring(savedName.lastIndexOf(".") + 1);
			String headName = savedName.substring(0, savedName.lastIndexOf("."));

			File originalFileNm = new File(uploadPath + "\\" + savedName);
			File thumbnailFileNm = new File(uploadPath + "\\" + headName + "_small." + pattern);

			int width = 130;
			int height = 200;
			// 占쏙옙占쏙옙占� 占싱뱄옙占쏙옙 占쏙옙占쏙옙
			BufferedImage originalImg = ImageIO.read(originalFileNm);
			BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
			// 占쏙옙占쏙옙占� 占쌓몌옙占쏙옙
			Graphics2D g = thumbnailImg.createGraphics();
			g.drawImage(originalImg, 0, 0, width, height, null);
			// 占쏙옙占싹삼옙占쏙옙
			ImageIO.write(thumbnailImg, pattern, thumbnailFileNm);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/product/product_list";
	}
	
	
/*
	
	
	@RequestMapping(value="/product_register", method = RequestMethod.POST)
	public String registerPOST(ProductVO product, RedirectAttributes rttr)throws Exception{
		logger.info("register post......................");
		logger.info(product.toString());
		
		service.insert(product);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		//return "/board/success";
		return "redirect:/product/product_list";*/

	private String UploadFile(String originalFilename, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalFilename;
		File target = new File(uploadPath, savedName);

		FileCopyUtils.copy(fileData, target);

		return savedName;
	}

/*	@RequestMapping(value = "/product_list", method = RequestMethod.GET)
	public String product_list(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		model.addAttribute("list", service.listProduct());

		model.addAttribute("list", service.listCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));

		model.addAttribute("pageMaker", pageMaker);
		
		return "/product/product_list2";
	}*/
	
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
		
		return "product/product_list2";
	}

	
	/*@RequestMapping(value = "/product_detail", method = RequestMethod.GET)
	public String product_detail(@RequestParam("p_num") String p_num, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		logger.info("product_detail method call");
		ProductVO product = service.detailProduct(p_num);
		 logger.info(product.toString()); 
		model.addAttribute("product", product);

		return "/product/product_detail2";
	}
	*/
	
	@RequestMapping(value="/product_detail", method = RequestMethod.GET)
	public String product_detail(@RequestParam("p_num") String p_num,
			@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		ProductVO product =service.detailProduct(p_num);
		
		model.addAttribute("product", product);
		
		return "/product/product_detail2";
	
	}
	
	
		

/*	@RequestMapping(value = "/product_update", method = RequestMethod.GET)
	public void product_update(@RequestParam("p_num") String p_num,@ModelAttribute("cri") Criteria cri ,Model model) throws Exception {

		logger.info("product updateGET method call..");
		ProductVO product = service.detailProduct(p_num);
		model.addAttribute("product", product);

	}

	@RequestMapping(value = "/product_update", method = RequestMethod.POST)
	public String product_update(ProductVO product, Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("mod post...........");

		service.updateProduct(product);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/product/product_list";
	}
	
	
*/
	
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
		
		return "redirect:/product/product_list";
		
	}
	
	
	/*@RequestMapping(value="/product_register", method = RequestMethod.GET)
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
		return "redirect:/product/product_list";
	}
	*/
	
	
	
	/*@RequestMapping(value = "/product_delete", method = RequestMethod.GET)
	public String product_delete(@RequestParam("p_num") String p_num, Criteria cri, RedirectAttributes rttr) throws Exception {

		logger.info("delete method");
		service.deleteProduct(p_num);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/product/product_list";

	}
	*/
	
	@RequestMapping(value = "/product_delete", method=RequestMethod.GET)
	public String product_delete(@RequestParam("p_num") String p_num,
			SearchCriteria cri, RedirectAttributes rttr) throws Exception {
		
		service.deleteProduct(p_num);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/product/product_list";
	}
	
	
	
	


	/*@RequestMapping(value = "/productReq_register", method = RequestMethod.GET)
	public String productReq_register() throws Exception {
		logger.info("productReq_register1 method call");
		return "/product/productReq_register";
	}

	@RequestMapping(value = "/productReq_register", method = RequestMethod.POST)
	public String productReq_register(Product_RequestVO proReq, Model model) throws Exception {

		logger.info("productReq_register2 method call");
		logger.info(proReq.toString());

		service.insertProductReq(proReq);

		model.addAttribute("proReq", proReq);

		return "/product/productReq_detail";
	}*/

	@RequestMapping(value = "/productReq_detail", method = RequestMethod.POST)
	public String productReq_detail1(Product_RequestVO proReq, Model model) throws Exception {
		logger.info("productReq_detail1 method call");

		// logger.info(proReq.toString());
		model.addAttribute("proReq", proReq);

		return "/product/productReq_detail";
	}

	// @RequestMapping(value = "/productReq_detail", method = RequestMethod.GET)
	// public String productReq_detail2(Product_RequestVO proReq, Model model)
	// throws Exception {
	// logger.info("productReq_detail2 method call");
	//
	// logger.info(proReq.toString());
	// model.addAttribute("proReq", proReq);
	//
	// }

}