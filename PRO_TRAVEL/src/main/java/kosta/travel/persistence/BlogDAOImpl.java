package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;
import kosta.travel.domain.Criteria;

@Repository
public class BlogDAOImpl implements BlogDAO {

   @Inject
   private SqlSession session;
   
   private static String namespace = "kosta.travel.mappers.blogMapper";

   @Override
   public List<BlogVO> blogList() throws Exception {
      return session.selectList(namespace+".blogList");
   }

   @Override
   public int insertBlog(BlogVO blog) throws Exception {
      return session.insert(namespace+".insertBlog", blog);
   }

   @Override
   public BlogVO detailBlog(String u_id) throws Exception {
      return session.selectOne(namespace+".detailBlog", u_id);
   }

   @Override
   public int postingBlog(BlogPostVO blogpost) throws Exception {
      return session.insert(namespace+".postingBlog", blogpost);
   }

   @Override
   public List<BlogPostVO> postBlogList(String u_id) throws Exception {
      return session.selectList(namespace+".postBlogList", u_id);
   }
   
   @Override
	public Integer updateBlog(BlogPostVO blogPost) throws Exception {
		return session.update(namespace+".updateBlog", blogPost);
	}

@Override
public BlogPostVO postDetail(String bp_postnum) throws Exception {
	return session.selectOne(namespace+".postDetail", bp_postnum);
}

@Override
public Integer removePost(BlogPostVO blogPost) throws Exception {
	return session.delete(namespace+".removePost", blogPost);
}

@Override
public Integer blogcount() throws Exception {
	return session.selectOne(namespace+".blogcount");
}
	
   
}