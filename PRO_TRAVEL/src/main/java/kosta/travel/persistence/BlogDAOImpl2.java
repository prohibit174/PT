package kosta.travel.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.BlogVO;


@Repository
public class BlogDAOImpl2 implements BlogDAO2 {

	@Inject
	private SqlSession session;

	private static String namespace = "kosta.travel.mappers.blogMapper2";

	@Override
	public int insertBlog(BlogVO blog) throws Exception {
		return session.insert(namespace+".insertBlog", blog);
	}
}

