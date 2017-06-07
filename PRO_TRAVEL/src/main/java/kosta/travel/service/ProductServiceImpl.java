package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
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
	
	

	@Override
	public void updateProduct(ProductVO product) throws Exception {
		dao.updateProduct(product);
		
	}

	@Override
	public void deleteProduct(String p_num) throws Exception {
		dao.deleteProduct(p_num);
		
	}

	@Override
	public void insertProductReq(Product_RequestVO proReq) throws Exception {
		dao.insertProductReq(proReq);
		
	}

}
