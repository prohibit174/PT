package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.CarpoolTest;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;

public interface CarpoolService {
	
	public void regist(CarpoolVO carpool)throws Exception;
	
	public Carpool_ListVO read(Integer c_num)throws Exception;
	
	public void modify(CarpoolVO carpool)throws Exception;
	
	public void remove(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll() throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	public List<Carpool_ListVO> carpoolAll() throws Exception;
	
	public void updatePerson(Integer c_num)throws Exception;
	
	//Mypage
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	public List<Carpool_RequestVO> myMakeRequest(Integer c_num)throws Exception;
	
	public List<Carpool_RequestVO> myRequest(String u_id)throws Exception;
	
	public List<CarpoolTest> requestAll(String u_id)throws Exception;
	
	public CarpoolTest readRequest(Integer cr_num)throws Exception;
	
	
	
	//Request
	public void registRequest(Carpool_RequestVO carpoolRequest)throws Exception;

	public Integer maxSelectRequest()throws Exception;
	
	public void updateRequest(Carpool_RequestVO carpoolRequest)throws Exception;
}
