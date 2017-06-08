package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;

public interface ProductService {
	
	public void insert(ProductVO product)throws Exception;
	public List<ProductVO> listProduct()throws Exception; 
	public ProductVO detailProduct(String p_num)throws Exception;
	public void updateProduct(ProductVO product)throws Exception;
	public void deleteProduct(String p_num)throws Exception;
	public void insertProductReq(Product_RequestVO proReq)throws Exception;
	public Product_RequestVO detailProductReq(String pr_reqnum)throws Exception;
	public List<ProductVO> listCriteria(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
}
