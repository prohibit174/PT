package kosta.travel.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteList;
import kosta.travel.domain.RouteVO;
import kosta.travel.domain.SearchTraveler;
import kosta.travel.persistence.AccompanyDao;

@Service
public class AccompanyService {

	@Inject
	private AccompanyDao dao;

	private List<AccompanyVO> list;

	public List<AccompanyVO> getUserRoute(HttpSession session) throws Exception {

		if (list != null) {
			list.clear();
		}
		String id = (String) session.getAttribute("login");
		RouteVO route = new RouteVO();
		route.setU_id(id);

		list = dao.getUserRoute(id);

		return list;
	}

	public List<AccompanyVO> getAccompanies() throws Exception {

		List<AccompanyVO> allAccompanyList = new ArrayList<AccompanyVO>();
		for (int i = 0; i < list.size(); i++) {
			List<AccompanyVO> userRoutesInfo = dao.getUserInfo(list.get(i).getU_id());// get
																						// user's
																						// route
																						// whose
																						// id
																						// is
																						// "0"
			List<AccompanyVO> temp = dao.getAccompanies(userRoutesInfo.get(i));
			allAccompanyList.addAll(temp);
		}
		return allAccompanyList;
	}

	public void insertRoute(RouteList[] list) throws Exception {

		RouteVO route = new RouteVO();

		for (int i = 0; i < list.length; i++) {

			Random r = new Random();
			int random = r.nextInt(100000000);
			route.setTp_num(random + "");
			route.setU_id(list[i].getId());
			route.setCor_region(list[i].getTitle());
			route.setTp_date(list[i].getEventdate());

			dao.insertRoute(route);
		}

	}

	public List<RouteVO> getTraveler(SearchTraveler trav) throws Exception {

		/*
		 * Object obj = trav.getEdate(); System.out.println("search service : "
		 * + obj.getClass().getName());
		 */

		SimpleDateFormat fmt = new SimpleDateFormat("yy/MM/dd");

		Calendar sdate = Calendar.getInstance();
		sdate.setTime(fmt.parse(trav.getSdate()));
		sdate.set(Calendar.MILLISECOND, 0);
		sdate.set(Calendar.MONTH, sdate.get(Calendar.MONTH));

		Calendar edate = Calendar.getInstance();
		edate.setTime(fmt.parse(trav.getEdate()));
		edate.set(Calendar.MILLISECOND, 0);
		edate.set(Calendar.MONTH, edate.get(Calendar.MONTH));

		/*
		 * System.out.println("+ 이전 출발연 : "+sdate.get(Calendar.YEAR));
		 * System.out.println("+ 이전 출발월 : "+sdate.get(Calendar.MONTH));
		 * System.out.println("+ 이전 출발일 : "+sdate.get(Calendar.DATE));
		 */

		List<RouteVO> alltraveler = new ArrayList<RouteVO>();

		String dates = trav.getSdate();

		if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
			RouteVO route = new RouteVO("", trav.getCity(), trav.getU_id(), trav.getSdate());
			List<RouteVO> traveler = dao.getTraveler(route);
			return traveler;

		} else {
			int switchh = 0;
			boolean loopTest = true;

			while (loopTest) {
				/* System.out.println(dates); */

				if (switchh == 1) {
					loopTest = false;
					System.out.println("반복 중단 입력");
				}
				RouteVO route = new RouteVO("", trav.getCity(), trav.getU_id(), dates);

				List<RouteVO> traveler = dao.getTraveler(route);

				if (!traveler.isEmpty()) {
					alltraveler.addAll(traveler);
				}
				sdate.add(Calendar.DATE, 1);
				dates = fmt.format(sdate.getTime());

				if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
					switchh = 1;
					System.out.println("반복 중단 준비");
				}
			}
			return alltraveler;
		}
	}

}
