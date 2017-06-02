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
	
	private RouteVO route;
	
	
	public List<AccompanyVO> getUserRoute(int id) throws Exception {
		return dao.getUserRoute(id);
	}

	@ResponseBody
	public void insertRoute()throws Exception{
		/*RouteDao dao = RouteDao.getInstance();
		
		String id =(String)request.getSession().getAttribute("member_id");
		String json=request.getParameter("json");
		System.out.println(json);
		//for(int i=0;i<jsonArray.size())
		//jsonArray.add(index, value);
		  
	  	  Object obj = JSONValue.parseWithException(json);
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
	    	  dao.insertRoute(route);
	      }
		
		*/
	}

	
}
