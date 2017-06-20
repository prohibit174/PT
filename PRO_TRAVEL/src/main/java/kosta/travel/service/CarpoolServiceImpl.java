package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
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
	public Carpool_ListVO read(Integer c_num) throws Exception {
		return dao.read(c_num);
	}

	@Override
	public void modify(CarpoolVO carpool) throws Exception {
		dao.modify(carpool);
		
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
	
	@Override
	public List<Carpool_ListVO> carpoolAll() throws Exception {
		return dao.carpoolAll();
	}

	
	//Mypage
	public List<CarpoolVO> myMakeCarpool(String u_id) throws Exception{
		return dao.myMakeCarpool(u_id);
	}
	
	@Override
	public List<CarpoolRequestUser> myMakeRequest(Integer c_num) throws Exception {
		return dao.myMakeRequest(c_num);
	}
	
	@Override
	public List<Carpool_RequestVO> myRequest(String u_id) throws Exception {
		return dao.myRequest(u_id);
	}
	
	@Override
	public List<CarpoolRequestUser> requestAll(String u_id) throws Exception {
		return dao.requestAll(u_id);
	}
	
	@Override
	public CarpoolRequestUser readRequest(Integer cr_num) throws Exception {
		return dao.readRequest(cr_num);
		
	}

	//Request
	@Override
	public void registRequest(Carpool_RequestVO carpoolRequest) throws Exception {
		dao.createRequest(carpoolRequest);
		
	}

	@Override
	public Integer maxSelectRequest() throws Exception {
		return  dao.maxSelectRequest();
	}

	@Transactional
	@Override
	public void accept(Carpool_RequestVO carpoolRequest, Integer c_num) throws Exception {
		dao.accept(carpoolRequest); //cr_ox를 o로 변경하고
		dao.dropPerson(c_num); //잔여좌석 1개 줄인다.
		
	}

	@Transactional
	@Override
	public void reject(Carpool_RequestVO carpoolRequest, Integer c_num) throws Exception {
		dao.reject(carpoolRequest);
		dao.addPerson(c_num);
			
	}
	
	@Transactional
	@Override
	public void deleteRequest(Integer cr_num, Integer c_num) throws Exception {
		dao.deleteRequest(cr_num);
		dao.addPerson(c_num);
		
	}

	@Override
	public List<Carpool_ListVO> recommendList() throws Exception {
		return dao.recommendList();
	}

















}
