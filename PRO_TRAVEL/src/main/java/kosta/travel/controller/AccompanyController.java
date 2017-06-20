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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.GroupVO;
import kosta.travel.domain.RouteList;
import kosta.travel.domain.RouteVO;
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

		// when user not login
		if (session.getAttribute("login") == null) {
			return "/accompany/Accomp_main";
		}

		// when user login
		try {
			model.addAttribute("list", service.getUserRoute(session));
			model.addAttribute("allAccompanyList", service.getAccompanies());

		} catch (Exception e) {
			e.printStackTrace();
		}

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

	@RequestMapping(value = "/cal", method = RequestMethod.GET)
	public @ResponseBody List<AccompanyVO> callender(SearchTraveler trav, Model model, HttpSession session,
			HttpServletResponse res) {
		trav.setU_id((String) session.getAttribute("login"));
		try {
			return service.getTraveler(trav);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
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
			if (group.getGroupVolist().get(i).getMax_people_num() == 0) {
				System.out.println("null 찾음");
				continue;
				
			
			} else {
				
				group.getGroupVolist().get(i).setU_id((String) session.getAttribute("login"));

				String groupnum = service.initGroup();
				if (groupnum == null) {

					System.out.println("db insert start from 0");
					group.getGroupVolist().get(i).setAccomp_group_num(1);
					service.registGroup(group.getGroupVolist().get(i));
				} else {
					service.registGroup(group.getGroupVolist().get(i));
				}
			}
		}
	}

}