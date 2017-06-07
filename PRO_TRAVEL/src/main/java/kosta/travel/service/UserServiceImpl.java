package kosta.travel.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;
import kosta.travel.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	public UserDAO dao;
	
	@Override
	public UsersVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}

	@Override
	public void regist(UsersVO users) throws Exception {
		dao.insertUsers(users);
		
	}

	@Override
	public int idCheck(String u_id) throws Exception {
		return dao.idCheck(u_id);
	}

	@Override
	public UsersVO userDetail(String u_id) throws Exception {
		return dao.userDetail(u_id);
	}

	@Override
	public void userUpdate(UsersVO users) throws Exception {
		dao.userUpdate(users);
	}

	@Override
	public boolean checkPw(String u_id, String u_pwd) throws Exception {
		return dao.checkPw(u_id, u_pwd);
	}

	@Override
	public void keepLogin(String u_id, String sessionId, Date next) throws Exception {
		dao.keepLogin(u_id, sessionId, next);
	}

	@Override
	public UsersVO checkLoginBefore(String value) {
		return dao.checkUserWithSessionKey(value);
	}
	
	

}
