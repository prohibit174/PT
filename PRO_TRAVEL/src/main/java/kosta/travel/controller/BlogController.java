package kosta.travel.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;
import kosta.travel.service.BlogService;

@Controller
@RequestMapping("/blog/*")
public class BlogController {

   private static final Logger logger = LoggerFactory.getLogger(BlogController.class);

   @Inject
   BlogService service;

   @Resource(name = "uploadPath")
   private String uploadPath;

   @RequestMapping(value = "/makeBlog", method = RequestMethod.GET)
   public void makeBlog_get() throws Exception {

   }

   @RequestMapping(value = "/makeBlog", method = RequestMethod.POST)
   public String makeBlog_post(Model model, BlogVO blog, RedirectAttributes rttr) throws Exception {
/*      System.out.println("controller in");
      logger.info("originalName: " + blog.getFile2().getOriginalFilename());*/

      String savedName = UploadFile(blog.getFile2().getOriginalFilename(), blog.getFile2().getBytes());

      blog.setB_img(savedName);

      /* logger.info(blog.toString()); */
      service.insertBlog(blog);

      rttr.addFlashAttribute("msg", "SUCCESS");
      try {

         String pattern = savedName.substring(savedName.lastIndexOf(".") + 1);
         String headName = savedName.substring(0, savedName.lastIndexOf("."));

         File originalFileNm = new File(uploadPath + "\\" + savedName);
         File thumbnailFileNm = new File(uploadPath + "\\" + headName + "_small." + pattern);

         int width = 130;
         int height = 200;

         BufferedImage originalImg = ImageIO.read(originalFileNm);
         BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);

         Graphics2D g = thumbnailImg.createGraphics();
         g.drawImage(originalImg, 0, 0, width, height, null);

         ImageIO.write(thumbnailImg, pattern, thumbnailFileNm);
      } catch (Exception e) {
         e.printStackTrace();
      }

      return "redirect:/blog/blogMain";
   }

   private String UploadFile(String originalFilename, byte[] fileData) throws Exception {

      UUID uid = UUID.randomUUID();
      String savedName = uid.toString() + "_" + originalFilename;
      File target = new File(uploadPath, savedName);

      FileCopyUtils.copy(fileData, target);

      return savedName;
   }

   @RequestMapping("/blogMain")
   public void blogMain(Model model) throws Exception {
      List<BlogVO> blogList = service.blogList();
      model.addAttribute("blogVO", blogList);
   }

 
   @RequestMapping(value = "/myBlog", method = RequestMethod.GET)
   public String myBlog(HttpSession session, Model model, @RequestParam("u_id") String u_id) throws Exception {

      String id = (String)session.getAttribute("login");
      model.addAttribute("id", id);

      BlogVO blog = service.detailBlog(u_id);
      List<BlogPostVO> blogpost=service.postBlogList(u_id);
      
      logger.info(blogpost.toString());
     /* logger.info(blog.toString());*/
      model.addAttribute("blog", blog);
      model.addAttribute("blogpost", blogpost);
    /*  logger.info(blogpost.toString());*/
      
   return "/blog/myBlog";
   }
   
   
   
   @RequestMapping(value = "/blogPost", method = RequestMethod.GET)
   public void blogpost_get() throws Exception {
      
      
   }

  
   @RequestMapping(value = "/blogPost", method = RequestMethod.POST)
   public String blogpost_post(HttpSession session, Model model, BlogPostVO blogpost, RedirectAttributes rttr) throws Exception {
      System.out.println("controller in");
      logger.info("originalName: " + blogpost.getFile3().getOriginalFilename());

      String savedName = UploadFile(blogpost.getFile3().getOriginalFilename(), blogpost.getFile3().getBytes());

      blogpost.setBp_img(savedName);

      logger.info(blogpost.toString());
      service.postingBlog(blogpost);
      
      String id = (String)session.getAttribute("login");
      model.addAttribute("id", id);

      rttr.addFlashAttribute("msg", "SUCCESS");
      try {

         String pattern = savedName.substring(savedName.lastIndexOf(".") + 1);
         String headName = savedName.substring(0, savedName.lastIndexOf("."));

         File originalFileNm = new File(uploadPath + "\\" + savedName);
         File thumbnailFileNm = new File(uploadPath + "\\" + headName + "_small." + pattern);

         int width = 500;
         int height = 500;

         BufferedImage originalImg = ImageIO.read(originalFileNm);
         BufferedImage thumbnailImg = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);

         Graphics2D g = thumbnailImg.createGraphics();
         g.drawImage(originalImg, 0, 0, width, height, null);

         ImageIO.write(thumbnailImg, pattern, thumbnailFileNm);
      } catch (Exception e) {
         e.printStackTrace();
      }

      return "redirect:/blog/myBlog?u_id="+id;
   }
   
   
    @RequestMapping("/myRealBlog")
    public String userOwnBlog(HttpSession session, Model model){
       String u_id = (String)session.getAttribute("login");
       model.addAttribute("u_id", u_id);
       return "redirect:/blog/myBlog";
    }
      
    
    @RequestMapping(value = "/updatePost", method=RequestMethod.GET)
    public String updateBlog(String bp_postnum, Model model) throws Exception{
       BlogPostVO blogPost = service.postDetail(bp_postnum);
       model.addAttribute("blogPost", blogPost);
       
       return "/blog/updatePost";
    }
    
	@RequestMapping(value="/updatePost", method=RequestMethod.POST)
    public String updatePost(@RequestParam("bp_postnum") String bp_postnum, String bp_contents, Model model, HttpSession session) throws Exception{
       System.out.println("update in" + bp_postnum);
		BlogPostVO blogPost = new BlogPostVO();
		System.out.println("update method in");
       blogPost=service.postDetail(bp_postnum);
       blogPost.setBp_contents(bp_contents);
      
       service.updateBlog(blogPost);
       
       
       String id = (String)session.getAttribute("login");
       model.addAttribute("id", id);
       System.out.println("blogupdate controller out");
       
       return "redirect:/blog/myBlog?u_id="+id;
    }
   

	@RequestMapping("/removePost")
	public String removePost(String bp_postnum, Model model) throws Exception{
		System.out.println("remove controller in" + bp_postnum);
		BlogPostVO blogPost = service.postDetail(bp_postnum);
		service.removePost(blogPost);
		System.out.println("removePost controller");
		
		String u_id = blogPost.getU_id();
		model.addAttribute("u_id", u_id);
		System.out.println("controller out");
		return "redirect:/blog/myBlog";
	}
}