package kosta.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.DeclareVO;
import kosta.travel.persistence.DeclareDAO;

@Service
public class DeclareServiceImpl implements DeclareService {
	
	@Inject
	private DeclareDAO dao;

	@Override
	public void declare_insert(DeclareVO vo) throws Exception {
		dao.declare_insert(vo);
	}

	@Override
	public Integer d_maxNum() throws Exception {
		return dao.d_maxNum();
	}


}
