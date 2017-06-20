
package kosta.travel.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosta.travel.domain.GroupVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.service.AccompanyService;

@Controller
@RequestMapping("/mypage/*")
public class MypageAccompanyController {

	@Inject
	private AccompanyService service;

	@RequestMapping(value = "/mypage_accompCheck", method = RequestMethod.GET)
	public String accompCheck(Model model, HttpSession session) throws Exception {
		String u_id = (String) session.getAttribute("login");

		List<GroupVO> groupVO = service.getGroupInfo1(u_id);
		for(int i=0;i<groupVO.size();i++){
			groupVO.get(i).setU_id(u_id);
			groupVO.get(i).setTp_date(groupVO.get(i).getTp_date().substring(0, 10));
		}
		
		for(int i=0;i<groupVO.size();i++){
			int current_num = service.getCurrent(groupVO.get(i));
			// get current
			groupVO.get(i).setCurrent_num(current_num);
			System.out.println("groupVO! : "+groupVO.get(i).getAccomp_group_num());
		}
		model.addAttribute("groupVO", groupVO);
		
		return "/mypage/mypage_accompCheck";
	}

}