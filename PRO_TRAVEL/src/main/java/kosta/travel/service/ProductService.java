package kosta.travel.service;

import java.util.List;
import java.util.concurrent.ExecutionException;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.SearchCriteria;

public interface ProductService {
	
	public void insert(ProductVO product)throws Exception;
	public List<ProductVO> listProduct()throws Exception; 
	public ProductVO detailProduct(String p_num)throws Exception;
	public void updateProduct(ProductVO product)throws Exception;
	public void deleteProduct(String p_num)throws Exception;
	public void insertProductReq(Product_RequestVO proReq)throws Exception;
	public Product_RequestVO detailProductReq(String pr_reqnum)throws Exception;
	public List<Product_RequestVO> listProductRequest(String u_id)throws Exception;
	public List<Product_RequestVO> listProductAccept(String u_id)throws Exception;
	public List<ProductVO> listCriteria(Criteria cri)throws Exception;
	public int listCountCriteria(Criteria cri)throws Exception;
	public List<ProductVO> listSearchCriteria(SearchCriteria cri)throws Exception;
	public int listSearchCount(SearchCriteria cri)throws Exception;
	public void updateAccept(Product_RequestVO proReq)throws Exception;
	public List<ProductVO> RecommendProductList(String u_id)throws Exception;
	public List<Product_RequestVO> MyRequestList(String u_id)throws Exception;
	public void updateReject(Product_RequestVO proReq)throws Exception;
	public List<Product_RequestVO> listProductRejected(String u_id)throws Exception;
	
}
