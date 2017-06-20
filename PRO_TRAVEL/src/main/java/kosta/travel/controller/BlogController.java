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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String makeBlog_post(Model model, BlogVO blog,RedirectAttributes rttr) throws Exception {
		System.out.println("controller in");
		logger.info("originalName: " + blog.getFile2().getOriginalFilename());

		String savedName = UploadFile(blog.getFile2().getOriginalFilename(), blog.getFile2().getBytes());

		blog.setB_img(savedName);

		logger.info(blog.toString());
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

		return "/blog/myBlog";
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
}
