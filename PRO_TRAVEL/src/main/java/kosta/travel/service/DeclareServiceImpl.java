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
	public List<DeclareVO> myDeclare(String u_id) throws Exception {
		return dao.myDeclare(u_id);
	}

	@Override
	public List<DeclareVO> myDeclaration(String u_id) throws Exception {
		return dao.myDeclaration(u_id);
	}

	@Override
	public List<DeclareVO> waitDeclare() throws Exception {
		return dao.waitDeclare();
	}

	@Override
	public List<DeclareVO> acceptDeclare() throws Exception {
		return dao.acceptDeclare();
	}

	@Override
	public List<DeclareVO> rejectDeclare() throws Exception {
		return dao.rejectDeclare();
	}

	@Override
	public void accept(Integer d_num) throws Exception {
		dao.accept(d_num);	
	}

	@Override
	public void reject(Integer d_num) throws Exception {
		dao.reject(d_num);
	}

	@Override
	public DeclareVO detailDeclare(Integer d_num) throws Exception {
		return dao.detailDeclare(d_num);
	}


}
