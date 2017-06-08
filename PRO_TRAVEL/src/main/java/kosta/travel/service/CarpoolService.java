package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_RequestVO;

public interface CarpoolService {
	
	public void regist(CarpoolVO carpool)throws Exception;
	
	public CarpoolVO read(Integer c_num)throws Exception;
	
	public void modify(CarpoolVO carpool)throws Exception;
	
	public void remove(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll() throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	//Mypage
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	public List<Carpool_RequestVO> myMakeRequest(int c_num)throws Exception;
	
	//Request
	public void registRequest(Carpool_RequestVO carpoolRequest)throws Exception;

	public Integer maxSelectRequest()throws Exception;
	
	public void updateRequest(Carpool_RequestVO carpoolRequest)throws Exception;
}
