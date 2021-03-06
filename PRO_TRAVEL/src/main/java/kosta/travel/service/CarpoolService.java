package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.domain.Criteria;

public interface CarpoolService {
	
	public void regist(CarpoolVO carpool)throws Exception;
	
	public Integer count()throws Exception;
	
	public Carpool_ListVO read(Integer c_num)throws Exception;
	
	public void modify(CarpoolVO carpool)throws Exception;
	
	public void remove(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll() throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	public List<Carpool_ListVO> carpoolAll() throws Exception;
	
	public List<Carpool_ListVO> mainCarpoolList() throws Exception;
	
	//Mypage
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	public List<CarpoolRequestUser> myMakeRequest(Integer c_num)throws Exception;
	
	public List<Carpool_RequestVO> myRequest(String u_id)throws Exception;
	
	public List<CarpoolRequestUser> requestAll(String u_id)throws Exception;
	
	public CarpoolRequestUser readRequest(Integer cr_num)throws Exception;
	
	
	
	//Request
	public void registRequest(Carpool_RequestVO carpoolRequest)throws Exception;

	public Integer maxSelectRequest()throws Exception;
	
	public void accept(Carpool_RequestVO carpoolRequest, Integer c_num)throws Exception;
	
	public void reject(Carpool_RequestVO carpoolRequest, Integer c_num)throws Exception;
	
	public void deleteRequest(Integer cr_num, Integer c_num)throws Exception;
	
	//추천
	public List<Carpool_ListVO> recommendList()throws Exception;
	
	//검색
	public List<CarpoolRequestUser> searchCarpool(CarpoolRequestUser user )throws Exception;
	
}
