package kosta.travel.service;

import java.util.List;

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

	@Override
	public List<ProductVO> listProduct() throws Exception {
		return dao.listProduct();
	}

	@Override
	public ProductVO detailProduct(String p_num) throws Exception {
		return dao.detailProduct(p_num);
	}

}
