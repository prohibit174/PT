package kosta.travel.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.GroupVO;
import kosta.travel.domain.RouteList;
import kosta.travel.domain.SearchTraveler;
import kosta.travel.service.AccompanyService;

@Controller
@RequestMapping("/accompany/*")
public class AccompanyController {

	static final Logger logger = LoggerFactory.getLogger(AccompanyController.class);

	@Inject
	AccompanyService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model, HttpSession session) {
/*
		// when user not login
		if (session.getAttribute("login") == null) {
			return "/accompany/Accomp_main";
		}
*/
		// when user login
		try {
			model.addAttribute("list", service.getUserRoute(session));
			model.addAttribute("allAccompanyList", service.getAccompanies());

		} catch (Exception e) {
			e.printStackTrace();
		}

		/*return "/accompany/Accomp_main";*/
		return "/accompany/Accomp_main";
	}

	@RequestMapping(value = "/enroll", method = RequestMethod.GET)
	public String enrollpage2(Model model, HttpSession session) {
		try {
			model.addAttribute("getCordinates", service.getCordinates());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/accompany/enroll";
	}

	@RequestMapping(value = "/enroll", method = RequestMethod.POST)
	public String insertRoute(HttpServletRequest req) {

		if (req.getParameter("json").isEmpty()) {
			return "redirect:/accompany/";
		}
		try {
			ObjectMapper maper = new ObjectMapper();

			RouteList[] list = maper.readValue(req.getParameter("json"), RouteList[].class);
			logger.info("insertRoute controller : " + list[0].getEventdate());
			service.insertRoute(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/accompany/";
	}

	@RequestMapping(value = "/cal", method = RequestMethod.POST)
	public @ResponseBody List<AccompanyVO> callender(SearchTraveler trav, Model model, HttpSession session) {
		List<AccompanyVO> list = new ArrayList<AccompanyVO>();
		try {
		for(int i=0; i < trav.getTrav().size();i++){
		trav.getTrav().get(i).setU_id((String) session.getAttribute("login"));
		
		list.addAll(service.getTraveler(trav.getTrav().get(i)));
		}
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		return list;
	}

	@RequestMapping(value = "/registerGroup", method = RequestMethod.GET)
	public String registerGroupGet(Model model, HttpSession session) {

		/*
		 * // when user not login if(session.getAttribute("login") == null){
		 * return "/accompany/Accomp_main"; }
		 */
		// when user login
		try {
			model.addAttribute("list", service.getUserRoute(session));

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/accompany/registerGroup";
	}

	@RequestMapping(value = "/registerGroup", method = RequestMethod.POST)
	public void registerGroupPost(Model model, HttpSession session, GroupVO group) {

		for (int i = 0; i < group.getGroupVolist().size(); i++) {
			System.out.println("controller before searvice == " + group.getGroupVolist().get(i).getTp_date());
			if (group.getGroupVolist().get(i).getMax_people_num() == 0) {
				System.out.println("null 찾음");
				continue;

			} else {

				group.getGroupVolist().get(i).setU_id((String) session.getAttribute("login"));

				String groupnum = service.initGroup();
				if (groupnum == null) {

					System.out.println("controller db insert start from 0");
					group.getGroupVolist().get(i).setAccomp_group_num(1);
					service.registGroup(group.getGroupVolist().get(i));
				} else {
					System.out.println("controller before searvice == " + group.getGroupVolist().get(i).getTp_date());
					service.registGroup(group.getGroupVolist().get(i));
				}
			}
		}
	}

	@RequestMapping(value = "/searchGroup", method = RequestMethod.GET)
	public String searchPage() {
		return "/accompany/searchGroup";
	}
	
	@RequestMapping(value = "/searchGroup", method = RequestMethod.POST)
	public @ResponseBody List<GroupVO> searchGroupList(SearchTraveler trav, Model model, HttpSession session,
			HttpServletResponse res) {
		List<GroupVO> list = new ArrayList<GroupVO>();
		System.out.println("controller search == "+trav.toString());
		
		System.out.println("controller to string == "+trav.getTrav().get(0).toString());
		
		try {
		for(int i =0; i<trav.getTrav().size();i++){
		trav.getTrav().get(i).setU_id((String) session.getAttribute("login"));
		list.addAll(service.searchGroupList(trav.getTrav().get(i)));
		}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	@RequestMapping(value = "/requestGroup", method = RequestMethod.POST)
	public String requestGroup(GroupVO groupvo, HttpSession session) {
		/*System.out.println("controller u_id == "+groupvo.getU_id());
		System.out.println("controller accomp_group_num == "+groupvo.getAccomp_group_num()); */
		
		groupvo.setU_id((String)session.getAttribute("login"));
		service.requestGroup(groupvo);
		return "request complete";
	}
	
	
}