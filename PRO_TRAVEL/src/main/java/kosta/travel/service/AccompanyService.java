package kosta.travel.service;

import java.util.List;
import java.util.Random;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteVO;
import kosta.travel.persistence.AccompanyDao;

@Service
public class AccompanyService {

	@Inject
	private AccompanyDao dao;
	
	public List<AccompanyVO> getUserRoute(int id) throws Exception {
		return dao.getUserRoute(id);
	}

	public int insertRoute(RouteVO route)throws Exception{
		/*  Object obj = JSONValue.parseWithException(json);
	      JSONArray jsonArray = (JSONArray)obj;
	      
	      for(int i=0;i<jsonArray.size();i++) {
	    	  Route route = new Route();
	    	  JSONObject rstJson = (JSONObject)jsonArray.get(i);
	  		  Random r=new Random();
	  		  int random=r.nextInt(100000000);
	  		  route.setTp_num(random+"");
	    	  route.setU_id(id);
	    	  route.setCor_region(rstJson.get("title").toString());
	    	  //route.setTp_date(rstJson.get("date").toString());
	    	  route.setTp_date(rstJson.get("eventdate").toString());
	    	  dao.insertRoute(route);*/
	    	  
		return 0;
	}
	
	
}
