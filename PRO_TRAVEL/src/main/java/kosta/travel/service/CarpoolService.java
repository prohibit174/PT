package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.CarpoolVO;

public interface CarpoolService {
	
	public void regist(CarpoolVO carpool)throws Exception;
	
	public CarpoolVO read(Integer c_num)throws Exception;
	
	public void modify(CarpoolVO carpool)throws Exception;
	
	public void remove(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll() throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;

}
