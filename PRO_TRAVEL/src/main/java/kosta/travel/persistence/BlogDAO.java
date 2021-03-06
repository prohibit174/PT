package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;
import kosta.travel.domain.Criteria;

public interface BlogDAO {

   public List<BlogVO> blogList() throws Exception;
   public int insertBlog(BlogVO blog)throws Exception;
   public BlogVO detailBlog(String u_id)throws Exception;
   public int postingBlog(BlogPostVO blogpost)throws Exception;
   public List<BlogPostVO> postBlogList(String u_id) throws Exception;
   public Integer updateBlog(BlogPostVO blogPost) throws Exception;
   public BlogPostVO postDetail(String bp_postnum) throws Exception;
   public Integer removePost(BlogPostVO blogPost) throws Exception;
   public Integer blogcount()throws Exception;
}