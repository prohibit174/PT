package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.CarpoolVO;
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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remove(Integer c_num) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CarpoolVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
