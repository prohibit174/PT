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
	
	private static String namespace="kosta.travel.mappers.productMapper";

	@Override
	public int insertProduct(ProductVO product) {
		return session.insert(namespace+".insertProduct", product);
	}

	@Override
	public List<ProductVO> listProduct() {
		return session.selectList(namespace+".listProduct");
	}

	@Override
	public ProductVO detailProduct(String p_num) {
		return session.selectOne(namespace+".detailProduct", p_num);
	}

	@Override
	public void updateProduct(ProductVO product) {
		 session.update(namespace+".updateProduct", product);
	}

	@Override
	public void deleteProduct(String p_num) {
		 session.delete(namespace+".deleteProduct",p_num);
	}

	@Override
	public Product_RequestVO detailProductReq(String pr_reqnum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertProductReq(Product_RequestVO proReq) {
		return session.insert(namespace+".insertProductReq", proReq);
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
