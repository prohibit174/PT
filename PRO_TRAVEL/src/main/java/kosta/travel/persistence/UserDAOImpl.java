package kosta.travel.persistence;

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
	public UsersVO checkPw(Integer u_pwd) throws Exception {
		return session.selectOne(namespace+".checkPw", u_pwd);
	}

	@Override
	public UsersVO userUpdate(UsersVO users) throws Exception {
		return session.selectOne(namespace+"userUpdate", users);
	}

	
	
}
