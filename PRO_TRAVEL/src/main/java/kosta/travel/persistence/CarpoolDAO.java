package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_RequestVO;

public interface CarpoolDAO {
	
	public void create(CarpoolVO vo)throws Exception;
	
	public CarpoolVO read(Integer c_num)throws Exception;
	
	public void update(CarpoolVO vo)throws Exception;
	
	public void delete(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll()throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	//마이페이지
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	//Request
	public void createRequest(Carpool_RequestVO vo);
}
