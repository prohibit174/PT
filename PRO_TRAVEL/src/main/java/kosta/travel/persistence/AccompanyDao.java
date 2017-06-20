package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.AccompanyVO;
import kosta.travel.domain.CordinatesVO;
import kosta.travel.domain.GroupVO;
import kosta.travel.domain.RouteVO;

@Repository
public class AccompanyDao {
	
	private static AccompanyDao dao = new AccompanyDao();

	
	public static AccompanyDao getInstance() {
		return dao;
	}

	@Inject
	private SqlSessionTemplate session;
	
	
	private static String namespace = "pro_travel.mapper.accompanyMapper";
	
	public List<AccompanyVO> getUserRoute(String id) throws Exception {
		return session.selectList(namespace+".getUserRoute", id);
	}
	
	public List<AccompanyVO> getUserInfo(String ID) throws Exception {
		return session.selectList(namespace+".getUserInfo", ID);
	}

	public List<AccompanyVO> getAccompanies(AccompanyVO accompany) throws Exception {
		return session.selectList(namespace+".getAccompanies", accompany);
	}
	
	public void insertRoute(RouteVO route){
		session.insert(namespace+".insertRoute", route);
	}
	
	public List<AccompanyVO> getTraveler(RouteVO route){
		return session.selectList(namespace+".getTraveler", route);
	}

	   public List<CordinatesVO> getCordinates(){
		      return session.selectList(namespace+".getCordinates");
		   }
	
	   public void registGroup(GroupVO group){
		   session.insert(namespace+".registGroup", group);
	   }
	   
	   public String initGroup(){
		   return session.selectOne(namespace+".initGroup");
	   }
	   
	   public void registGroupZero(GroupVO group){
		   session.insert(namespace+".registGroupZero", group);
	   }
	   
	   public List<GroupVO> getGroupInfo1(String u_id) {
			// TODO Auto-generated method stub
			System.out.println("u_id : "+u_id); 
			return session.selectList(namespace + ".getGroupInfo1", u_id);
		}

		public int getCurrent(GroupVO groupVO) {
			// TODO Auto-generated method stub
			return session.selectOne(namespace + ".getCurrent", groupVO);
		}
	
}



	
	
	
	


