package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;
import kosta.travel.persistence.BlogDAO;

@Service
public class BlogServiceImpl implements BlogService {
   
   @Inject
   public BlogDAO dao;

   @Override
   public List<BlogVO> blogList() throws Exception {
      return dao.blogList();
   }

   @Override
   public void insertBlog(BlogVO blog) throws Exception {
      dao.insertBlog(blog);
      
   }

   @Override
   public BlogVO detailBlog(String u_id) throws Exception {
      return dao.detailBlog(u_id);
   }

   @Override
   public void postingBlog(BlogPostVO blogpost) throws Exception {
      dao.postingBlog(blogpost);
      
   }

   @Override
   public List<BlogPostVO> postBlogList(String u_id) throws Exception {
      return dao.postBlogList(u_id);
   }



@Override
public BlogPostVO postDetail(String bp_postnum) throws Exception {
	return dao.postDetail(bp_postnum);
}

@Override
public void updateBlog(BlogPostVO blogPost) throws Exception {
	dao.updateBlog(blogPost);
	
}

@Override
public void removePost(BlogPostVO blogPost) throws Exception {
	dao.removePost(blogPost);
	
}

}