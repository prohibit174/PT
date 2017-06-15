package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;

@Repository
public class CarpoolDAOImpl implements CarpoolDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = 
			"kosta.travel.mappers.carpoolMapper";
	
	
	@Override
	public void create(CarpoolVO vo) throws Exception {
		session.insert(namespace+".create", vo);

	}

	@Override
	public Carpool_ListVO read(Integer c_num) throws Exception {
		return session.selectOne(namespace+".read", c_num);
	}

	@Override
	public void modify(CarpoolVO vo) throws Exception {
		session.update(namespace+".update", vo);

	}

	@Override
	public void delete(Integer c_num) throws Exception {
		session.delete(namespace+".delete", c_num);

	}

	@Override
	public List<CarpoolVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public Integer maxSelect() throws Exception {
		return session.selectOne(namespace+".maxSelect");
	}
	
	@Override
	public List<Carpool_ListVO> carpoolAll() throws Exception {
		return session.selectList(namespace+".carpoolAll");
	}

	
	//Mypage
	@Override
	public List<CarpoolVO> myMakeCarpool(String u_id) throws Exception {
		return session.selectList(namespace+".myMakeCarpool", u_id);
	}
	
	@Override
	public List<CarpoolRequestUser> myMakeRequest(Integer c_num) throws Exception {
		return session.selectList(namespace+".myMakeRequest", c_num);
	}
	
	public List<Carpool_RequestVO> myRequest(String u_id)throws Exception{
		return session.selectList(namespace+".myRequest", u_id);
	}
	

	@Override
	public List<CarpoolRequestUser> requestAll(String u_id) throws Exception {
		return session.selectList(namespace+".requestAll", u_id);
	}
	
	@Override
	public CarpoolRequestUser readRequest(Integer cr_num) throws Exception {
		return session.selectOne(namespace+".readRequest", cr_num);
	}

	
	//Request
	@Override
	public void createRequest(Carpool_RequestVO vo) {
		session.insert(namespace+".createRequest", vo);
		
	}

	@Override
	public Integer maxSelectRequest() throws Exception {
		return session.selectOne(namespace+".maxSelectRequest");
	}

	@Override
	public void accept(Carpool_RequestVO vo) throws Exception {
		session.update(namespace+".accept", vo);
		
	}
	
	@Override
	public void dropPerson(Integer c_num) throws Exception {
		session.update(namespace+".dropPerson", c_num);
		
	}















}
