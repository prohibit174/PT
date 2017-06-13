package kosta.travel.persistence;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.Product_SearchVO;
import kosta.travel.domain.SearchCriteria;

public interface ProductDAO {
	
	public int insertProduct(ProductVO product)throws Exception;
	public List<ProductVO> listProduct()throws Exception;
	public ProductVO detailProduct(String p_num)throws Exception;
	public void updateProduct(ProductVO product)throws Exception;
	public void deleteProduct(String p_num)throws Exception;
	public Product_RequestVO detailProductReq(String pr_reqnum)throws Exception;
	public int insertProductReq(Product_RequestVO proReq)throws Exception;
	public List<Product_RequestVO> listProductRequest(String u_id)throws Exception;
	public int countProduct(Product_SearchVO proSearch)throws Exception;
	public List<ProductVO> listProduct(Product_SearchVO proSearch)throws Exception;
	public void updateAccept(Product_RequestVO proReq)throws Exception;
	public List<Product_RequestVO> listNotAceept()throws Exception;
	public List<ProductVO> listCriteria(Criteria cri)throws Exception;
	public int countPaging(Criteria cri)throws Exception;
	public List<ProductVO> listSearch(SearchCriteria cri)throws Exception;
	public int listSearchCount(SearchCriteria cri)throws Exception;
	public List<Product_RequestVO> listProductAccept(String u_id)throws Exception;
	public List<ProductVO> RecommendProductList()throws Exception;
	



}
