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
			  List<AccompanyVO> temp = dao.getAccompanies(userRoutesInfo.get(i));
			  allAccompanyList.addAll(temp);
			}
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
