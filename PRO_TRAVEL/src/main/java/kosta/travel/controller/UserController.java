package kosta.travel.controller;

import java.io.PrintWriter;
import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.WebUtils;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;
import kosta.travel.service.UserService;

@Controller
public class UserController {

   @Inject
   private UserService service;
   
   @RequestMapping(value="/loginAction", method=RequestMethod.GET)
   public void loginActionGET(@ModelAttribute("dto") LoginDTO dto){
      
   }
   
   @RequestMapping(value="/loginAction", method=RequestMethod.POST)
   public String loginActionPOST(LoginDTO dto, HttpSession session, Model model) throws Exception{
      UsersVO vo = service.login(dto);
      String admin = "admin";
      
          if(vo==null){ // 占싸깍옙占쏙옙 占쏙옙占쏙옙

               return null;
            }
          
          
          if(admin.equals((String)vo.getU_id())){
             System.out.println("controller admin");
             model.addAttribute("admin", vo.getU_id());
          }else{
             model.addAttribute("usersVO", vo.getU_id());
          }

          
          if(dto.isUseCookie()){
             int amount = 60 * 60 * 24 * 7;
             Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));
             service.keepLogin(vo.getU_id(), session.getId(), sessionLimit);
          }
          
          return null;
          
   }

   @RequestMapping(value="/logout", method=RequestMethod.GET)
   public String logout(
         HttpServletRequest request, HttpServletResponse response, HttpSession session
         ) throws Exception{
      if(session.getAttribute("login") != null){
         
         session.removeAttribute("login");
         session.invalidate();
         
         Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
         
         if(loginCookie != null){
            loginCookie.setPath("/");
            loginCookie.setMaxAge(0);
            response.addCookie(loginCookie);
            System.out.println((String) session.getAttribute("login"));
            service.keepLogin((String) session.getAttribute("login"), session.getId(), new Date());
         }
      }else{
    	  session.removeAttribute("admin");
    	  session.invalidate();
    	  
      }
      return "logout";
   }
   

}