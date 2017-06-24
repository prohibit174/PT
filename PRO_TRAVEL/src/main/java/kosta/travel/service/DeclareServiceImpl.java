package kosta.travel.service;

import java.util.List;

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

	@Override
	public List<DeclareVO> declare_list() throws Exception {
		return dao.declare_list();
	}

	@Override
	public List<DeclareVO> myDeclaration(String u_id) throws Exception {
		return dao.myDeclaration(u_id);
	}


}
