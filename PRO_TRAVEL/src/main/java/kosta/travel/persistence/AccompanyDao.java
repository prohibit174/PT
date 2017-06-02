package kosta.travel.persistence;

import java.util.List;
import javax.inject.Inject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.RouteVO;

@Repository
public class AccompanyDao {
	
	private static AccompanyDao dao = new AccompanyDao();

	
	public static AccompanyDao getInstance() {
		return dao;
	}

	@Inject
	private SqlSessionTemplate session;
	
	private static String namespace = "pro_travel.mapper.accompanyMapper";
	
	public List<AccompanyVO> getUserRoute(int id) throws Exception {
		return session.selectList(namespace+".getUserRoute", id);
	}
	
	public List<AccompanyVO> getUserInfo(String ID) throws Exception {
		return session.selectList(namespace+".getUserInfo", ID);
	}

	public List<AccompanyVO> getAccompanies(AccompanyVO accompany) throws Exception {
		return session.selectList(namespace+".getAccompanies", accompany);
	}
	
}



	
	
	
	


