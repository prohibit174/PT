package kosta.travel.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kosta.travel.mappers.userMapper";
	
	@Override
	public UsersVO login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public Integer insertUsers(UsersVO users) throws Exception {
		return session.insert(namespace+".insertUsers", users);
	}

	@Override
	public Integer idCheck(String u_id) throws Exception {
		return session.selectOne(namespace + ".idCheck", u_id);
	}

	@Override
	public UsersVO userDetail(String u_id) throws Exception {
		return session.selectOne(namespace+".userDetail", u_id);
	}

	@Override
	public boolean checkPw(String u_id, String u_pwd) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int re = -1;
		boolean result = false;
		map.put("u_id", u_id);
		map.put("u_pwd", u_pwd);
		
		try {
			re = session.selectOne(namespace+".checkPw", map);
			if(re>0){
				result = true;
			}else{
				result = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("DAO" + result);
		return result;
	}

	@Override
	public Integer userUpdate(UsersVO users) throws Exception {
		return session.update(namespace+".userUpdate", users);
	}

	@Override
	public void keepLogin(String u_id, String sessionId, Date next) {
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("u_id", u_id);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);
		
		session.update(namespace + ".keepLogin", paramMap);
	}

	@Override
	public UsersVO checkUserWithSessionKey(String value) {
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public List<UsersVO> userAll() throws Exception {
		return session.selectList(namespace+".userAll");
	}

	
	
}
