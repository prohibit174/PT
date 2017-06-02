package kosta.travel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.ProductVO;
import kosta.travel.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	private ProductDAO dao;

	@Override
	public void insert(ProductVO product) throws Exception {
		dao.insertProduct(product);
	}

}
