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

}
