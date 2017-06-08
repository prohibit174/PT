package kosta.travel.controller;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
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
	public String Joinform(){
		return "/join/joinform";
	}
	
	@RequestMapping(value="/joinform", method=RequestMethod.POST)
	public String JoinUser(UsersVO users, Model model)throws Exception{
		System.out.println("JoinForm in");
		String savedName = UploadFile(users.getImg_file().getOriginalFilename(), users.getImg_file().getBytes());
		
		users.setU_img(savedName);
		System.out.println(savedName);
		
		service.regist(users);
		model.addAttribute("savedName", savedName);
		System.out.println(model);
		return "/home";
	}
	
	  private String UploadFile(String originalFilename, byte[] fileData)throws Exception {
	      
	      UUID uid = UUID.randomUUID();
	      String savedName = uid.toString() + "_" + originalFilename;
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
