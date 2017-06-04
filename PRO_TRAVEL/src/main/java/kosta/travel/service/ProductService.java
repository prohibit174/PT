package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.ProductVO;

public interface ProductService {
	
	public void insert(ProductVO product)throws Exception;
	public List<ProductVO> listProduct()throws Exception; 
	public ProductVO detailProduct(String p_num)throws Exception;

}
