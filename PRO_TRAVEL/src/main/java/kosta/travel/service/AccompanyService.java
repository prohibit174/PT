package kosta.travel.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteList;
import kosta.travel.domain.RouteVO;
import kosta.travel.persistence.AccompanyDao;

@Service
public class AccompanyService {
	
	@Inject
	private AccompanyDao dao;
	
	private List<AccompanyVO> list;
	
	public List<AccompanyVO> getUserRoute(HttpSession session) throws Exception {
		
		
		
		if(list != null){
		list.clear();
		}
		String id = (String)session.getAttribute("login");
		/*System.out.println(request.getContextPath()); */
		RouteVO route = new RouteVO();
		route.setU_id(id);
		
		
		list = dao.getUserRoute(id);
	
		/*request.setAttribute("list", list);*/

		return list;
	}

	public List<AccompanyVO> getAccompanies() throws Exception {
		
		List<AccompanyVO> allAccompanyList = new ArrayList<AccompanyVO>();
		for(int i=0;i< list.size() ;i++)
			{
			  List<AccompanyVO> userRoutesInfo  = dao.getUserInfo(list.get(i).getU_id());//get user's route whose id is "0"
			  //get routes of logined user.
			  //userRoutesInfo[0] contains 5.1 Nice, id, trip_style and so on...
			  //userRoutesInfo[1] contains 5.2 Nice, id, trip_style and so on...
		/*    String name = userRoutesInfo.get(i).getU_name();
			  String region = userRoutesInfo.get(i).getCor_region();
			  String date = userRoutesInfo.get(i).getTp_date();
			  System.out.println(i+"踰덉㎏"+date+"�쓽 "+region);
			  System.out.println();*/
			  List<AccompanyVO> temp = dao.getAccompanies(userRoutesInfo.get(i));
			  allAccompanyList.addAll(temp);
			}
	/*	System.out.println();
		System.out.println("allAccompanyList.size : " +allAccompanyList.size());
		*/
		
		/* �룞�뻾 紐⑸줉 肄섏넄 �솗�씤
		 * for(int i=0;i< allAccompanyList.size() ;i++)
			{ String name = allAccompanyList.get(i).getU_name();
			  String region = allAccompanyList.get(i).getCor_region();
			  String date = allAccompanyList.get(i).getTp_date();
			  String lati = allAccompanyList.get(i).getCor_lati();
			  String longi = allAccompanyList.get(i).getCor_longi();
			  System.out.println(date+"�쓽 "+region+"�뿉�꽌�쓽 �룞�뻾�� "+name+"�엯�땲�떎"+"lat/long : "+lati+" / "+longi);
			}*/
			   /*request.setAttribute("allAccompanyList", allAccompanyList);*/
		return allAccompanyList;
	} 
	
	
	
	public void insertRoute(RouteList[] list)throws Exception{
		
			RouteVO route = new RouteVO();
		
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

}
