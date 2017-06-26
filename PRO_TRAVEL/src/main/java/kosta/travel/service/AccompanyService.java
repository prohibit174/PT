package kosta.travel.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.CordinatesVO;
import kosta.travel.domain.GroupVO;
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
	
	public List<AccompanyVO> getUserRoute(HttpSession session, String id) throws Exception {

		if (list != null) {
			list.clear();
		}
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
/*			int random = r.nextInt(100000000);
			route.setTp_num(random + "");*/
			route.setU_id(list[i].getId());
			route.setCor_region(list[i].getTitle());
			route.setTp_date(list[i].getEventdate());

			dao.insertRoute(route);
		}

	}

	public List<AccompanyVO> getTraveler(SearchTraveler trav) throws Exception {

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

		List<AccompanyVO> alltraveler = new ArrayList<AccompanyVO>();

		String dates = trav.getSdate();

		if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
			RouteVO route = new RouteVO("", trav.getCity(), trav.getU_id(), trav.getSdate());
			List<AccompanyVO> traveler = dao.getTraveler(route);
			return traveler;

		} else {
			int switchh = 0;
			boolean loopTest = true;

			while (loopTest) {
				/* System.out.println(dates); */

				if (switchh == 1) {
					loopTest = false;
					/*System.out.println("반복 중단 입력");*/
				}
				RouteVO route = new RouteVO("", trav.getCity(), trav.getU_id(), dates);

				List<AccompanyVO> traveler = dao.getTraveler(route);

				if (!traveler.isEmpty()) {
					alltraveler.addAll(traveler);
				}
				sdate.add(Calendar.DATE, 1);
				dates = fmt.format(sdate.getTime());

				if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
					switchh = 1;
					System.out.println("AccompanyService.java 반복 중단 준비");
				}
			}
			return alltraveler;
		}
	}
	
	   public List<CordinatesVO> getCordinates() {

		      List<CordinatesVO> cordinatesList = dao.getCordinates();

		      return cordinatesList;
		   }

	   public void registGroup(GroupVO group){
		   
		   String date = group.getTp_date().substring(2, 10);
/*		   System.out.println("service ========= date" + date);
*/		   group.setTp_date(date);
		   
		   if(group.getAccomp_group_num() == 1){
			   dao.registGroupZero(group);
		   }else{
		   dao.registGroup(group);
		   }
	   }
	   
	   public List<GroupVO> getGroupInfo1(String u_id) {
			//get (DATE	CITY	current	  ___  Detail) from Accomp_group table
			List<GroupVO> getGroupInfo1 = dao.getGroupInfo1(u_id);
			/*		for(int i=0;i<getGroupInfo1.size();i++)
			{
				getGroupInfo1.get(i).setTp_date(getGroupInfo1.get(i).getTp_date().substring(0, 10));
			}*/
			
			return getGroupInfo1;
		}

		public int getCurrent(GroupVO groupVO) {
			
			try {
				int value=dao.getCurrent(groupVO);
				return value;
			} catch (Exception e) {
				return 0;
			}
			
		}
	   

	   public String initGroup(){
		   return dao.initGroup();
	   }

	public List<GroupVO> getGroupInfo2(String u_id) {

		List<GroupVO> getGroupInfo2 = dao.getGroupInfo2(u_id);

		return getGroupInfo2;
	}

	public int getCurrent2(GroupVO groupVO) {
		try {
			int value=dao.getCurrent2(groupVO);
			return value;
		} catch (Exception e) {
/*			System.out.println("에러 진입");
			e.printStackTrace();*/
			return 0;
		}
	}



	public GroupVO getGroupDetailInfo(int group_id) {
		return dao.getGroupDetailInfo(group_id);

	}

	public List<GroupVO> getGuestGroupList(int group_id) {
		return dao.getGuestGroupList(group_id);

	}

	public void Accom_accept(int acr_num) {
		dao.Accom_accept(acr_num);
		
	}

	public void Accom_reject(int acr_num) {
		dao.Accom_reject(acr_num);
		
	}
	   
	   public List<GroupVO> searchGroupList(SearchTraveler search) throws Exception {

			SimpleDateFormat fmt = new SimpleDateFormat("yy/MM/dd");

			Calendar sdate = Calendar.getInstance();
			sdate.setTime(fmt.parse(search.getSdate()));
			sdate.set(Calendar.MILLISECOND, 0);
			sdate.set(Calendar.MONTH, sdate.get(Calendar.MONTH));

			Calendar edate = Calendar.getInstance();
			edate.setTime(fmt.parse(search.getEdate()));
			edate.set(Calendar.MILLISECOND, 0);
			edate.set(Calendar.MONTH, edate.get(Calendar.MONTH));

			List<GroupVO> allgroups = new ArrayList<GroupVO>();

			String dates = search.getSdate();

			if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
				RouteVO route = new RouteVO("", search.getCity(), search.getU_id(), search.getSdate());
				GroupVO groups = dao.searchGroupList(route);
				String substr = groups.getTp_date().substring(2, 10);
				groups.setTp_date(substr);
				allgroups.add(groups);
				return allgroups;

			} else {
				int switchh = 0;
				boolean loopTest = true;
				
				while (loopTest) {
					 System.out.println(dates); 

					if (switchh == 1) {
						loopTest = false;
						System.out.println("반복 중단 입력");
					}
					
					RouteVO route = new RouteVO("", search.getCity(), search.getU_id(), dates);
					GroupVO groups = null;
					groups = dao.searchGroupList(route);
					
					System.out.println("dao.searchGroupList(route) == " + dao.searchGroupList(route));
					
					System.out.println("1");
					if (sdate.getTimeInMillis() == edate.getTimeInMillis()) {
						System.out.println("2");
						switchh = 1;
					System.out.println("AccompanyService.java 반복 중단 준비");
					}
					
					System.out.println("3");
					
					if (groups == null) {
						sdate.add(Calendar.DATE, 1);
						dates = fmt.format(sdate.getTime());
						continue;
						}else{
						
						String substr = groups.getTp_date().substring(2, 10);
						
						groups.setTp_date(substr);
						
						System.out.println("4");
						allgroups.add(groups);
						System.out.println("5");
						}
					sdate.add(Calendar.DATE, 1);
					dates = fmt.format(sdate.getTime());
					System.out.println("6");
				
				}
				System.out.println("allgroups size == "+allgroups.size());
				return allgroups;
			}
		}
	   
	   
	   public void requestGroup(GroupVO groupvo){
		   dao.requestGroup(groupvo);
	   }

	public void remove_accom_group(int accomp_group_num) {
		 dao.remove_accom_group(accomp_group_num);		
	}

	public void mypage_accomp_edit_post(GroupVO newGroupVO) {
		 dao.mypage_accomp_edit_post(newGroupVO);
	}

	public int count() {
		System.out.println("accom service 진입");
		return dao.count();
	}

	public List<GroupVO> getUser_havingTripInfo(HttpSession session) {

		return dao.getUser_havingTripInfo();
	}
	   
	   
}
