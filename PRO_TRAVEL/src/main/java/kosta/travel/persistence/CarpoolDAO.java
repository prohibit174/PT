package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.CarpoolVO;

public interface CarpoolDAO {
	
	public void create(CarpoolVO vo)throws Exception;
	
	public CarpoolVO read(Integer c_num)throws Exception;
	
	public void update(CarpoolVO vo)throws Exception;
	
	public void delete(Integer c_num)throws Exception;
	
	public List<CarpoolVO> listAll()throws Exception;
	
	public Integer maxSelect()throws Exception;
}
