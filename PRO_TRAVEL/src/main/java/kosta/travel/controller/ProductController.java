package kosta.travel.controller;


import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.service.ProductService;


@Controller
@RequestMapping("/product/*")
public class ProductController {

   private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
   
   @Resource(name="uploadPath")
   private String uploadPath;
   @Inject
   private ProductService service;

   @RequestMapping(value = "/product_register", method = RequestMethod.GET)
   public void product_registerGET() throws Exception {
      System.out.println("registerget method call");
   }

   @RequestMapping(value = "/product_register", method = RequestMethod.POST)
   public String product_registerPOST(Model model, ProductVO product) throws Exception {
      
      System.out.println("registerpost method call");
      
      
      logger.info("originalName: "+product.getFile1().getOriginalFilename());
      
      String savedName = UploadFile(product.getFile1().getOriginalFilename(), product.getFile1().getBytes());

      product.setP_img(savedName);
      
      logger.info(product.toString());
      service.insert(product);

      
      try { 
         
           String pattern = savedName.substring(savedName.lastIndexOf(".")+1);
         String headName = savedName.substring(0, savedName.lastIndexOf("."));
      
       File originalFileNm = new File(uploadPath+"\\"+savedName);
       File thumbnailFileNm = new File(uploadPath+"\\" +headName+"_small."+pattern);
       
       int width = 130; int height = 200; 
       // 썸네일 이미지 생성 
      BufferedImage originalImg = ImageIO.read(originalFileNm); BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR); 
      // 썸네일 그리기 
      Graphics2D g = thumbnailImg.createGraphics(); g.drawImage(originalImg, 0, 0, width, height, null); 
      // 파일생성
      ImageIO.write(thumbnailImg, pattern, thumbnailFileNm);   } 
      catch (Exception e) { 
         e.printStackTrace();
      }

      return "redirect:/product/product_list";
   }

   private String UploadFile(String originalFilename, byte[] fileData)throws Exception {
      
      UUID uid = UUID.randomUUID();
      String savedName = uid.toString() + "_" + originalFilename;
      File target = new File(uploadPath, savedName);
      
      FileCopyUtils.copy(fileData, target);
      
      return savedName;
   }

   @RequestMapping(value = "/product_list", method = RequestMethod.GET)
   public String product_list(Model model) throws Exception {

      model.addAttribute("list", service.listProduct());
      return "/product/product_list2";
   }

   @RequestMapping(value = "/product_detail", method = RequestMethod.GET)
   public String product_detail(@RequestParam("p_num") String p_num, Model model) throws Exception {
      logger.info("product_detail method call");
      ProductVO product = service.detailProduct(p_num);
      /* logger.info(product.toString()); */
      model.addAttribute("product", product);

      return "/product/product_detail2";
   }

   @RequestMapping(value = "/product_update", method = RequestMethod.GET)
   public void product_update(@RequestParam("p_num") String p_num, Model model) throws Exception {
      
      logger.info("product updateGET method call..");
      ProductVO product = service.detailProduct(p_num);
      model.addAttribute("product", product);

   }

   @RequestMapping(value = "/product_update", method = RequestMethod.POST)
   public String product_update(ProductVO product, RedirectAttributes rttr) throws Exception {
      logger.info("mod post...........");

      service.updateProduct(product);
      /* logger.info(product.getU_id()); */
      rttr.addFlashAttribute("msg", "SUCCESS");

      return "redirect:/product/product_list";
   }

   @RequestMapping(value = "/product_delete", method = RequestMethod.GET)
   public String remove(@RequestParam("p_num") String p_num) throws Exception {
      
     logger.info("delete method");
      service.deleteProduct(p_num);

      return "redirect:/product/product_list";

   }
   
   @RequestMapping(value = "/productReq_register", method = RequestMethod.GET)
   public String productReq_register()throws Exception {
  
      return "/product/productReq_register";
   }

     @RequestMapping(value = "/productReq_register", method = RequestMethod.POST)
      public String productReq_register(Product_RequestVO proReq, Model model) throws Exception {
         System.out.println("registerpost method call");
         logger.info(proReq.toString());
         service.insertProductReq(proReq);
         
        /* model.addAttribute("proReq", proReq);*/

         return "/product/productReq_detail";
      }

      @RequestMapping(value = "/productReq_detail", method = RequestMethod.GET)
      public String productReq_detail(Product_RequestVO proReq, Model model) throws Exception {
         logger.info("product_detail method call");
         
         logger.info(proReq.toString()); 
         model.addAttribute("proReq", proReq);
         
         return "/product/productReq_detail";
      }
      

   

}