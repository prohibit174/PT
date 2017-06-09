package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;

public interface CarpoolDAO {
	
	public void create(CarpoolVO vo)throws Exception;
	
	public Carpool_ListVO read(Integer c_num)throws Exception;
	
	public void update(CarpoolVO vo)throws Exception;
	
	public void delete(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll()throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	public List<Carpool_ListVO> carpoolAll()throws Exception;
	
	//마이페이지
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	public List<Carpool_RequestVO>myMakeRequest(int c_num)throws Exception;
	
	//Request
	public void createRequest(Carpool_RequestVO vo);
	
	public Integer maxSelectRequest()throws Exception;
	
	public void updateRequest(Carpool_RequestVO vo)throws Exception;
}
