package kosta.travel.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kosta.travel.domain.UsersVO;
import kosta.travel.service.UserService;

@Controller
@RequestMapping("/join/*")
public class JoinController {

	@Resource(name="uploadPath")
	private String uploadPath;
	@Inject
	private UserService service;
	
	@RequestMapping(value="/joinform", method=RequestMethod.GET)
	public String Joinform() throws Exception{
		return "/join/joinform";
	}
	
	
	@RequestMapping(value="/joinform", method=RequestMethod.POST)
	public String JoinUser(Model model,UsersVO users)throws Exception{
		System.out.println("JoinForm in");
		String savedName = UploadFile(users.getImg_file().getOriginalFilename(), users.getImg_file().getBytes());
		
		users.setU_img(savedName);
		
		service.regist(users);

		System.out.println(users.toString());
		
		try {
			//Create Thumbnail image as small size.
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

		
		return "/home";
	}
	
	  private String UploadFile(String originalFilename, byte[] fileData)throws Exception {
	      
		  long time = System.currentTimeMillis();
		  SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmddhhmmss");
	      String savedName = dayTime.format(new Date(time))+"_" + originalFilename;
		 /* UUID uid = UUID.randomUUID();
	      String savedName = uid.toString() + "_" + originalFilename;*/
	      File target = new File(uploadPath, savedName);
	      
	      FileCopyUtils.copy(fileData, target);
	      
	      return savedName;
	   }
	
	@RequestMapping("/terms_conditions")
	public String terms_conditions(){
		return "/join/terms_conditions";
	} 
	
	@RequestMapping("/privacy_policy")
	public String privacy_policy(){
		return "/join/privacy_policy";
	}
	
	//AJAX for ID Check
	@ResponseBody
	@RequestMapping(value="/IdCheckAction", method=RequestMethod.POST)
	public Integer idCheck(HttpServletRequest request) throws Exception{
		String u_id = request.getParameter("u_id");
		int re = service.idCheck(u_id);
		System.out.println(u_id + "re" + re);
		return re;
	}
	
	
}
