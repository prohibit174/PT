package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.persistence.CarpoolDAO;


@Service
public class CarpoolServiceImpl implements CarpoolService {
	
	@Inject
	private CarpoolDAO dao;

	@Override
	public void regist(CarpoolVO carpool) throws Exception {
		dao.create(carpool);
		
	}

	@Override
	public CarpoolVO read(Integer c_num) throws Exception {
		return dao.read(c_num);
	}

	@Override
	public void modify(CarpoolVO carpool) throws Exception {
		dao.update(carpool);
		
	}

	@Override
	public void remove(Integer c_num) throws Exception {
		dao.delete(c_num);
		
	}

	@Override
	public List<CarpoolVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public Integer maxSelect() throws Exception {
		return dao.maxSelect();
	}
	
	public List<CarpoolVO> myMakeCarpool(String u_id) throws Exception{
		return dao.myMakeCarpool(u_id);
	}

	@Override
	public void regist(Carpool_RequestVO request) throws Exception {
		dao.createRequest(request);
		
	}



}
