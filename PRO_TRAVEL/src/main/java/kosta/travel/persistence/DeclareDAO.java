package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.DeclareVO;

public interface DeclareDAO {
	//신고 입력
	public void declare_insert(DeclareVO vo) throws Exception;
	//d_num 자동 증가
	public Integer d_maxNum() throws Exception;
	//신고 리스트
	public List<DeclareVO> declare_list() throws Exception;
}
