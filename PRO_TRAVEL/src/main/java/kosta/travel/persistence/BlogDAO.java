package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.BlogVO;

public interface BlogDAO {

	public List<BlogVO> blogList() throws Exception;
	public int insertBlog(BlogVO blog)throws Exception;
}
