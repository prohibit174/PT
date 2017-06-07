package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.CarpoolVO;

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
	public CarpoolVO read(Integer c_num) throws Exception {
		return session.selectOne(namespace+".read", c_num);
	}

	@Override
	public void update(CarpoolVO vo) throws Exception {
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

}
