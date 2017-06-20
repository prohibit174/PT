package kosta.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.BlogVO;
import kosta.travel.persistence.BlogDAO2;

@Service
public class BlogServiceImpl2 implements BlogService2{
	
	@Inject
	private BlogDAO2 dao2;

	@Override
	public void insertBlog(BlogVO blog) throws Exception {
		dao2.insertBlog(blog);
		
	}

}
