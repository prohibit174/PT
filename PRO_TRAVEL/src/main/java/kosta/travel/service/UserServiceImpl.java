package kosta.travel.service;

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
	public UsersVO userUpdate(UsersVO users) throws Exception {
		return dao.userUpdate(users);
	}
	
	

}
