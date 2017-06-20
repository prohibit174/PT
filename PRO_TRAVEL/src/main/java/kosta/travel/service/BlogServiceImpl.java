package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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

}
