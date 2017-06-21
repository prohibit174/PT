package kosta.travel.service;

import kosta.travel.domain.DeclareVO;

public interface DeclareService {

	public void declare_insert(DeclareVO vo) throws Exception;
	
	public Integer d_maxNum() throws Exception;
}
