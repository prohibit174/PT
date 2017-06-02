package kosta.travel.service;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;


public interface UserService {

	public UsersVO login(LoginDTO dto) throws Exception;
	public void regist(UsersVO users) throws Exception;
	
}
