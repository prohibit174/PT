package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.BlogPostVO;
import kosta.travel.domain.BlogVO;

public interface BlogDAO {

	public List<BlogVO> blogList() throws Exception;
	public int insertBlog(BlogVO blog)throws Exception;
	public BlogVO detailBlog(String u_id)throws Exception;
	public int postingBlog(BlogPostVO blogpost)throws Exception;
	public List<BlogPostVO> postBlogList() throws Exception;
}
