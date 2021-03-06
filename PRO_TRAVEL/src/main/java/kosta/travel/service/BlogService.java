package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;
import kosta.travel.domain.Criteria;

public interface BlogService {

   public List<BlogVO> blogList() throws Exception;
   public void insertBlog(BlogVO blog)throws Exception;
   public BlogVO detailBlog(String u_id)throws Exception;
   public void postingBlog(BlogPostVO blogpost)throws Exception;
   public List<BlogPostVO> postBlogList(String u_id)throws Exception;
   public void updateBlog(BlogPostVO blogPost) throws Exception;
   public BlogPostVO postDetail(String bp_postnum) throws Exception;
   public void removePost(BlogPostVO blogPost) throws Exception;
   public Integer blogcount()throws Exception;
}