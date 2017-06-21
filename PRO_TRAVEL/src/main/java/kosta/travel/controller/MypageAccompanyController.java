
package kosta.travel.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kosta.travel.domain.GroupVO;
import kosta.travel.service.AccompanyService;

@Controller
@RequestMapping("/mypage/*")
public class MypageAccompanyController {

   @Inject
   private AccompanyService service;

   @RequestMapping(value = "/mypage_accompCheck", method = RequestMethod.GET)
   public String accompCheck(Model model, HttpSession session) throws Exception {
      String u_id = (String) session.getAttribute("login");

      /* Host Group = groupVO1 */
      List<GroupVO> groupVO = service.getGroupInfo1(u_id);
      for (int i = 0; i < groupVO.size(); i++) {
         groupVO.get(i).setU_id(u_id);
         groupVO.get(i).setTp_date(groupVO.get(i).getTp_date().substring(0, 10));
      }

      for (int i = 0; i < groupVO.size(); i++) {
         int current_num = service.getCurrent(groupVO.get(i));
         // get current
         groupVO.get(i).setCurrent_num(current_num);
         System.out.println("groupVO! : " + groupVO.get(i).getAccomp_group_num());
      }
      model.addAttribute("groupVO", groupVO);

      /* Guest Group = groupVO2 */
      List<GroupVO> groupVO2 = service.getGroupInfo2(u_id);
      for (int i = 0; i < groupVO2.size(); i++) {
         groupVO2.get(i).setU_id(u_id);
         groupVO2.get(i).setTp_date(groupVO2.get(i).getTp_date().substring(0, 10));
      }

      for (int i = 0; i < groupVO2.size(); i++) {
         int current_num = service.getCurrent2(groupVO2.get(i));
         // get current
         groupVO2.get(i).setCurrent_num(current_num);
         System.out.println("groupVO2! : " + groupVO2.get(i).getAccomp_group_num());
      }
      model.addAttribute("groupVO2", groupVO2);

      return "/mypage/mypage_accompCheck";
   }

   @RequestMapping(value = "/accom_read", method = RequestMethod.GET)
   public String read(@RequestParam("group_id") int group_id, Model model, HttpServletRequest request,
         HttpSession session) throws Exception {

      GroupVO groupVO = service.getGroupDetailInfo(group_id);
      
      List<GroupVO> guestGroupList=service.getGuestGroupList(group_id);
      for(int i=0;i<guestGroupList.size();i++)
         System.out.println(guestGroupList.toString());
      int current_num = service.getCurrent(groupVO);
      // get current
      groupVO.setCurrent_num(current_num);
      
      model.addAttribute("groupVO", groupVO);
      model.addAttribute("guestGroupList", guestGroupList);
      return "/mypage/mypage_accompRead";
   }
   
   @RequestMapping(value = "/Accom_accept", method = RequestMethod.GET)
   public String Accom_accept(GroupVO groupVO, @RequestParam("acr_num") int acr_num ) throws Exception {
      service.Accom_accept(acr_num);
      return "redirect:/mypage/mypage_accompCheck";
   }
   
   @RequestMapping(value = "/Accom_reject", method = RequestMethod.GET)
   public String Accom_reject(GroupVO groupVO, @RequestParam("acr_num") int acr_num ) throws Exception {
      service.Accom_reject(acr_num);
      return "redirect:/mypage/mypage_accompCheck";   
   }
}