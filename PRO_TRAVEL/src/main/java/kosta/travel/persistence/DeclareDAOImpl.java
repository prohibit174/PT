package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.DeclareVO;

@Repository
public class DeclareDAOImpl implements DeclareDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kosta.travel.mappers.declareMapper";
	
	@Override
	public void declare_insert(DeclareVO vo) throws Exception {
		session.insert(namespace + ".declare_insert", vo);
	}

	@Override
	public Integer d_maxNum() throws Exception {
		return session.selectOne(namespace + ".d_maxNum");
	}

	@Override
	public List<DeclareVO> declare_list() throws Exception {
		return session.selectList(namespace + ".declare_list");
	}

}
