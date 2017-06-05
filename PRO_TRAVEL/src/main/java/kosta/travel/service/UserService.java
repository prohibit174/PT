package kosta.travel.service;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;


public interface UserService {

	public UsersVO login(LoginDTO dto) throws Exception;
	public void regist(UsersVO users) throws Exception;
	public int idCheck(String u_id) throws Exception;
	public UsersVO userDetail(String u_id) throws Exception;
	public boolean checkPw(String u_id, String u_pwd) throws Exception;
	public UsersVO userUpdate(UsersVO users)throws Exception;
	
}
