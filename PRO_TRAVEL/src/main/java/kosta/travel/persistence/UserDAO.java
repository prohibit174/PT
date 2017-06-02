package kosta.travel.persistence;

import java.util.Map;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;

public interface UserDAO {
	public UsersVO login(LoginDTO dto) throws Exception;
	public Integer insertUsers(UsersVO users) throws Exception;
	public Integer idCheck(String u_id) throws Exception;
	public UsersVO userDetail(String u_id) throws Exception;
	public Map<String, String> checkPw(Integer u_pwd) throws Exception;
	public UsersVO userUpdate(UsersVO users) throws Exception;
	
}
