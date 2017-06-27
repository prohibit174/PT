package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.CarpoolRequestUser;
import kosta.travel.domain.CarpoolVO;
import kosta.travel.domain.Carpool_ListVO;
import kosta.travel.domain.Carpool_RequestVO;
import kosta.travel.domain.Criteria;

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
	public Integer count() throws Exception {
		return session.selectOne(namespace+".count");	
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
	
	@Override
	public void dropPerson(Integer c_num) throws Exception {
		session.update(namespace+".dropPerson", c_num);
		
	}
	
	@Override
	public void addPerson(Integer c_num) throws Exception {
		session.update(namespace+".addPerson", c_num);
		
	}
	
	@Override
	public List<Carpool_ListVO> mainCarpoolList() throws Exception {
		return session.selectList(namespace+".mainCarpoolList");
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
	public void reject(Carpool_RequestVO vo) throws Exception {
		session.update(namespace+".reject", vo);
		
	}
	
	@Override
	public void deleteRequest(Integer cr_num) throws Exception {
		session.delete(namespace+".deleteRequest", cr_num);
	}

	//동행경로와 맞는 카풀추천리스트
	@Override
	public List<Carpool_ListVO> recommendList() throws Exception {
		return session.selectList(namespace+".recommendList");
	}

	@Override
	public List<CarpoolRequestUser> searchCarpool(CarpoolRequestUser user) throws Exception {
		/*System.out.println("dao one select ==="+ session.selectOne(namespace+".searchCarpool", user).toString());*/
		/*System.out.println(session.selectList(namespace+".searchCarpool", user).get(0).toString());*/
		return session.selectList(namespace+".searchCarpool", user);
	}





}
