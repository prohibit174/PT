package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.Product_SearchVO;


@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="kosta.travel.mappers.ProductMapper";

	@Override
	public int insertProduct(ProductVO product) {
		return session.insert(namespace+".create", product);
	}

	@Override
	public List<ProductVO> listProduct(RowBounds row, Product_SearchVO search) {
		
		return null;
	}

	@Override
	public ProductVO detailProduct(String p_num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateProduct(ProductVO product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteProduct(ProductVO product) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Product_RequestVO detailProductReq(String pr_reqnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertProductReq(Product_RequestVO proReq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product_RequestVO> listProductRequest(String u_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countProduct(Product_SearchVO proSearch) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<ProductVO> listProduct(Product_SearchVO proSearch) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateAccept(Product_RequestVO proReq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Product_RequestVO> listNotAceept() {
		// TODO Auto-generated method stub
		return null;
	}

}
