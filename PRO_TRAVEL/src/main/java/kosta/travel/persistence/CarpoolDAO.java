package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;

public interface CarpoolDAO {
	
	public void create(CarpoolVO vo)throws Exception;
	
	public Carpool_ListVO read(Integer c_num)throws Exception;
	
	public void modify(CarpoolVO vo)throws Exception;
	
	public void delete(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll()throws Exception;
	
	public Integer maxSelect()throws Exception;
	
	public List<Carpool_ListVO> carpoolAll()throws Exception;
	
	public void dropPerson(Integer c_num)throws Exception;
	
	public void addPerson(Integer c_num)throws Exception;
	
	//마이페이지
	public List<CarpoolVO> myMakeCarpool(String u_id)throws Exception;
	
	public List<CarpoolRequestUser>myMakeRequest(Integer c_num)throws Exception;
	
	public List<Carpool_RequestVO>myRequest(String u_id)throws Exception;
	
	public List<CarpoolRequestUser>requestAll(String u_id)throws Exception;
	
	public CarpoolRequestUser readRequest(Integer cr_num)throws Exception;
	
	
	//Request
	public void createRequest(Carpool_RequestVO vo);
	
	public Integer maxSelectRequest()throws Exception;
	
	public void accept(Carpool_RequestVO vo)throws Exception;
	
	public void reject(Carpool_RequestVO vo)throws Exception;
	
	//추천리스트
	public List<Carpool_ListVO> recommendList()throws Exception;

}
