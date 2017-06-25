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
	public List<DeclareVO> myDeclare(String u_id) throws Exception {
		return session.selectList(namespace + ".myDeclare", u_id);
	}

	@Override
	public List<DeclareVO> myDeclaration(String u_id) throws Exception {
		return session.selectList(namespace+".myDeclaration", u_id);
	}

	@Override
	public List<DeclareVO> waitDeclare() throws Exception {
		return session.selectList(namespace+".waitDeclare");
	}

	@Override
	public List<DeclareVO> acceptDeclare() throws Exception {
		return session.selectList(namespace+".acceptDeclare");
	}

	@Override
	public List<DeclareVO> rejectDeclare() throws Exception {
		return session.selectList(namespace+".rejectDeclare");
	}

	@Override
	public void accept(Integer d_num) throws Exception {
		session.update(namespace+".accept", d_num);
	}

	@Override
	public void reject(Integer d_num) throws Exception {
		session.update(namespace+".reject", d_num);	
	}

}
