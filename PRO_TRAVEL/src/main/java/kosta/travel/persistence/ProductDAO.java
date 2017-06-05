package kosta.travel.persistence;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.Product_SearchVO;

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
	public int updateAccept(Product_RequestVO proReq)throws Exception;
	public List<Product_RequestVO> listNotAceept()throws Exception;


}
