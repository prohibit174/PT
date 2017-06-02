package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteVO;
import kosta.travel.persistence.AccompanyDao;

@Service
public class AccompanyService {

	@Inject
	private AccompanyDao dao;
	
	public List<AccompanyVO> getUserRoute(int id) throws Exception {
		return dao.getUserRoute(id);
	}

}
