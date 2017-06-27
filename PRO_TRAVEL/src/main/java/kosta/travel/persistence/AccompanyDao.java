package kosta.travel.persistence;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.Accomp_home_map;
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
			return session.selectList(namespace + ".getGroupInfo1", u_id);
		}

		public int getCurrent(GroupVO groupVO) {
			// TODO Auto-generated method stub
			return session.selectOne(namespace + ".getCurrent", groupVO);
		}

		public List<GroupVO> getGroupInfo2(String u_id) {
			System.out.println("u_id : "+u_id); 
			return session.selectList(namespace + ".getGroupInfo2", u_id);
		}

		public int getCurrent2(GroupVO groupVO2) {
			return session.selectOne(namespace + ".getCurrent2", groupVO2);
		}


		public GroupVO getGroupDetailInfo(int group_id) {
			return session.selectOne(namespace + ".getGroupDetailInfo", group_id);

		}

		public List<GroupVO> getGuestGroupList(int group_id) {
			return session.selectList(namespace + ".getGuestGroupList", group_id);
		}

		public void Accom_accept(int acr_num) {
			session.insert(namespace+".Accom_accept", acr_num);			
		}

		public void Accom_reject(int acr_num) {
			// TODO Auto-generated method stub
			session.insert(namespace+".Accom_reject", acr_num);			

		}
		
		public GroupVO searchGroupList(RouteVO route) {
				return session.selectOne(namespace + ".searchGroupList", route);
	}
	
		public void requestGroup(GroupVO groupvo){
			if(session.selectOne(namespace + ".getCurrentGroupRequestNum") == null){	
				session.insert(namespace + ".requestGroupZero", groupvo);
			}else{
			session.insert(namespace + ".requestGroup", groupvo);
			}
}

		public void remove_accom_group(int accomp_group_num) {
			System.out.println("accompgorup num :"+accomp_group_num );
			session.delete(namespace+".remove_accomp_group", accomp_group_num);			
			session.delete(namespace+".remove_accomp_group_list", accomp_group_num);
			session.delete(namespace+".remove_accompanyRequest", accomp_group_num);
		}

		public void mypage_accomp_edit_post(GroupVO newGroupVO) {
				session.update(namespace+".mypage_accomp_edit_post", newGroupVO);
		}

		public int count() {
	         try {
	             int temp=session.selectOne(namespace + ".count");
	             return temp;
	          } catch (Exception e) {
	             return 0;
	          }
		}

		public List<GroupVO> getUser_havingTripInfo() {
			System.out.println("dao 진입");
			return session.selectList(namespace + ".getUser_havingTripInfo");
		}
		
		public List<Accomp_home_map> getHomeMap1(int home_map_num) {
			return session.selectList(namespace + ".getHomeMap1", home_map_num);
		}

}



	
	
	
	


