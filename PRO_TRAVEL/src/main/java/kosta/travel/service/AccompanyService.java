package kosta.travel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteList;
import kosta.travel.domain.RouteVO;
import kosta.travel.persistence.AccompanyDao;

@Service
public class AccompanyService {
	
	@Inject
	private AccompanyDao dao;
	
	public List<AccompanyVO> getUserRoute(int id) throws Exception {
		return dao.getUserRoute(id);
	}

	public void insertRoute(RouteList[] list)throws Exception{
		
			RouteVO route = new RouteVO();
		
			System.out.println("배열크기"+list.length);
	      for(int i=0;i<list.length;i++) {
	   
	  		  Random r=new Random();
	  		  int random=r.nextInt(100000000);
	  		  route.setTp_num(random+"");
	    	  route.setU_id(list[i].getId());
	    	  route.setCor_region(list[i].getTitle());
	    	  route.setTp_date(list[i].getEventdate());
	    	  
	    	  
	    	  dao.insertRoute(route);
	      }
		
	
	}

	
/*
	String id = "0";


	String id =(String)session.getAttribute("member_id");
	System.out.println(request.getContextPath()); 



	AccompanyDao dao = AccompanyDao.getInstance();
	RouteVO route=new RouteVO();
	AccompanyService ser = new AccompanyService();

	route.setU_id("0");
	//  로그인 후 route.setU_id(id);
	List<AccompanyVO> list = dao.getUserRoute(0);


	request.setAttribute("list", list);

	List<AccompanyVO> allAccompanyList=dao.getUserRoute(0);

	allAccompanyList.clear();


	for(int i=0;i< "${list}".size() ;i++)
		{
		  
		  List<AccompanyVO> userRoutesInfo  = dao.getUserInfo(list.get(i).getU_id());//get user's route whose id is "0"
		  //get routes of logined user.
		  //userRoutesInfo[0] contains 5.1 Nice, id, trip_style and so on...
		  //userRoutesInfo[1] contains 5.2 Nice, id, trip_style and so on...
		  //userRoutesInfo[2] contains 5.3 Swiss, id, trip_style and so on...
		  //userRoutesInfo[3] contains 5.4 Swiss, id, trip_style and so on...
		  String name=userRoutesInfo.get(i).getU_name();
		  String region=userRoutesInfo.get(i).getCor_region();
		  String date=userRoutesInfo.get(i).getTp_date();
		  System.out.println(i+"번째"+date+"의 "+region);
		  System.out.println();

		  //List<Accompany> temp=dao.findAccompany(userRoutesInfo.get(i));
		  List<AccompanyVO> temp=dao.getAccompanies(userRoutesInfo.get(i));
		  allAccompanyList.addAll(temp);
		  
		}
	System.out.println();
	System.out.println("allAccompanyList.size : " +allAccompanyList.size());
		

	for(int i=0;i< allAccompanyList.size() ;i++)
		{ String name=allAccompanyList.get(i).getU_name();
		  String region=allAccompanyList.get(i).getCor_region();
		  String date=allAccompanyList.get(i).getTp_date();
		  String lati=allAccompanyList.get(i).getCor_lati();
		  String longi=allAccompanyList.get(i).getCor_longi();
		  System.out.println(date+"의 "+region+"에서의 동행은 "+name+"입니다"+"lat/long : "+lati+" / "+longi);
		}
		   request.setAttribute("allAccompanyList", allAccompanyList);
		   
		   
	*/
	
	
	
	
	
}
