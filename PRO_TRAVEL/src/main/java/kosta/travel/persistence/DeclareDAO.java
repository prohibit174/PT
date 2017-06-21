package kosta.travel.persistence;

import kosta.travel.domain.DeclareVO;

public interface DeclareDAO {
	//신고 입력
	public void declare_insert(DeclareVO vo) throws Exception;
	
	//d_num 자동 증가
	public Integer d_maxNum() throws Exception;
}
