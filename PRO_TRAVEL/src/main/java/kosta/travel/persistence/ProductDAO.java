package kosta.travel.persistence;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.Product_SearchVO;

public interface ProductDAO {
	
	int insertProduct(ProductVO product);
	List<ProductVO> listProduct(RowBounds row,Product_SearchVO search);
	ProductVO detailProduct(String p_num);
	int updateProduct(ProductVO product);
	int deleteProduct(ProductVO product);
	Product_RequestVO detailProductReq(String pr_reqnum);
	int insertProductReq(Product_RequestVO proReq);
	List<Product_RequestVO> listProductRequest(String u_id);
	int countProduct(Product_SearchVO proSearch);
	List<ProductVO> listProduct(Product_SearchVO proSearch);
	int updateAccept(Product_RequestVO proReq);
	List<Product_RequestVO> listNotAceept();


}
