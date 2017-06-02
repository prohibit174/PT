package kosta.travel.service;

import javax.servlet.http.HttpServletRequest;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;

public interface UserService {
	public UsersVO login(LoginDTO dto) throws Exception;
	
}
