package kosta.travel.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.Product_SearchVO;
import kosta.travel.domain.SearchCriteria;


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
		return session.selectOne(namespace+".detailProductReq", pr_reqnum);
	}

	@Override
	public int insertProductReq(Product_RequestVO proReq) {
		return session.insert(namespace+".insertProductReq", proReq);
	}

	@Override
	public List<Product_RequestVO> listProductRequest(String u_id) {
		
		return session.selectList(namespace+".listProductRequest", u_id);
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
	public void updateAccept(Product_RequestVO proReq) {
		session.update(namespace+".updateAccept", proReq);
				
	}

	@Override
	public List<Product_RequestVO> listNotAceept() {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCriteria", cri,
				new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<ProductVO> listSearch(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri,
				new RowBounds(cri.getPageStart(), cri.getPerPageNum()));
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace+ ".listSearchCount", cri);
	}

	@Override
	public List<Product_RequestVO> listProductAccept(String u_id) throws Exception {
		return session.selectList(namespace+".listProductAccept", u_id );
	}

	@Override
	public List<ProductVO> RecommendProductList(String u_id) throws Exception {
		return session.selectList(namespace+".RecommendProductList", u_id);
	}

	@Override
	public List<Product_RequestVO> MyRequestList(String u_id) throws Exception {
		return session.selectList(namespace+".MyRequestList", u_id);
	}

	@Override
	public void updateReject(Product_RequestVO proReq) throws Exception {
		session.update(namespace+".updateReject", proReq);
		
	}

	@Override
	public List<Product_RequestVO> listProductRejected(String u_id) throws Exception {
		return session.selectList(namespace+".listProductRejected", u_id);
	}

	@Override
	public void updateCancel(Product_RequestVO proReq) throws Exception {
		session.update(namespace+".updateCancel", proReq);
		
	}

	@Override
	public List<Product_RequestVO> listProductCanceled(String u_id) throws Exception {
		return session.selectList(namespace+".listProductCanceled", u_id);
	}

	@Override
	public Integer productAll() throws Exception {
		
		return session.selectOne(namespace+".productAll");
	}

	

	


}
