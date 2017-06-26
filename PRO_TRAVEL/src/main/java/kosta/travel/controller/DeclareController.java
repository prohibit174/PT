package kosta.travel.controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.DeclareVO;
import kosta.travel.service.DeclareService;
import kosta.travel.util.UploadFileUtils;

@Controller
@RequestMapping("/declare/*")
public class DeclareController {

	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Inject
	private DeclareService service;
	
    private String UploadFile(String originalFilename, byte[] fileData)throws Exception {
	      
		  long time = System.currentTimeMillis();
		  SimpleDateFormat dayTime = new SimpleDateFormat("yyyymmddhhmmss");
	      String savedName = dayTime.format(new Date(time))+"_" + originalFilename;

	      File target = new File(uploadPath, savedName);
	      
	      FileCopyUtils.copy(fileData, target);
	      
	      return savedName;
	   }
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String declare_main(){
		return "declaration/declare_main";
	}
	
	@RequestMapping(value="/normal", method=RequestMethod.POST)
	public String declare_insert(DeclareVO vo, HttpSession session) throws Exception{
		String savedName = UploadFile(vo.getImg_file().getOriginalFilename(), vo.getImg_file().getBytes());
		
		vo.setD_file(savedName);
		
		vo.setD_big("normal");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
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
		
		return "redirect:/mypage/declare";
	}
	
	@RequestMapping(value="/accompany", method=RequestMethod.POST)
	public String declare_insert2(DeclareVO vo, HttpSession session) throws Exception{
		vo.setD_big("accompany");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
		return "redirect:/mypage/declare";
	}
	
	@RequestMapping(value="/carpool", method=RequestMethod.POST)
	public String declare_insert3(DeclareVO vo, HttpSession session) throws Exception{
		vo.setD_big("carpool");
		vo.setU_id((String)session.getAttribute("login"));
		if(service.d_maxNum() == null){
			vo.setD_num(1);
		}else{
			vo.setD_num(service.d_maxNum() + 1);

		}
		
		service.declare_insert(vo);
		
		return "redirect:/mypage/declare";
	}
}
