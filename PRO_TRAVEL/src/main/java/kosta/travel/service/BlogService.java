package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.BlogVO;

public interface BlogService {

	public List<BlogVO> blogList() throws Exception;
	public void insertBlog(BlogVO blog)throws Exception;
	public BlogVO detailBlog(String u_id)throws Exception;
}
