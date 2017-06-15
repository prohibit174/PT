package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kosta.travel.domain.Criteria;
import kosta.travel.domain.ProductVO;
import kosta.travel.domain.Product_RequestVO;
import kosta.travel.domain.SearchCriteria;
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

	@Override
	public Product_RequestVO detailProductReq(String pr_reqnum) throws Exception {
		return dao.detailProductReq(pr_reqnum);
	}

	@Override
	public List<ProductVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		return dao.countPaging(cri);
	}

	@Override
	public List<Product_RequestVO> listProductRequest(String u_id) throws Exception {
		return dao.listProductRequest(u_id);
	}

	@Override
	public List<ProductVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}

	@Override
	public List<Product_RequestVO> listProductAccept(String u_id) throws Exception {
		return dao.listProductAccept(u_id);
	}

	@Override
	public void updateAccept(Product_RequestVO proReq) throws Exception {
		dao.updateAccept(proReq);
		
	}

	@Override
	public List<ProductVO> RecommendProductList(String u_id) throws Exception {
		return dao.RecommendProductList(u_id);
	}

	@Override
	public List<Product_RequestVO> MyRequestList(String u_id) throws Exception {
		return dao.MyRequestList(u_id);
	}

	@Override
	public void updateReject(Product_RequestVO proReq) throws Exception {
		dao.updateReject(proReq);
		
	}

	@Override
	public List<Product_RequestVO> listProductRejected(String u_id) throws Exception {
		return dao.listProductRejected(u_id);
	}

}
