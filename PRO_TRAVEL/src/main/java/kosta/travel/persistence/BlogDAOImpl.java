package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

import kosta.travel.domain.BlogVO;

@Repository
public class BlogDAOImpl implements BlogDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kosta.travel.mappers.blogMapper";

	@Override
	public List<BlogVO> blogList() throws Exception {
		return session.selectList(namespace+".blogList");
	}
	
	
}
