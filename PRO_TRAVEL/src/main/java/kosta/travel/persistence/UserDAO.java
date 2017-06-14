package kosta.travel.persistence;

import java.util.Date;
import java.util.List;
import java.util.Map;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;

public interface UserDAO {
	public UsersVO login(LoginDTO dto) throws Exception;
	public Integer insertUsers(UsersVO users) throws Exception;
	public Integer idCheck(String u_id) throws Exception;
	public UsersVO userDetail(String u_id) throws Exception;
	public boolean checkPw(String u_id, String u_pwd) throws Exception;
	public Integer userUpdate(UsersVO users) throws Exception;
	public void keepLogin(String u_id, String sessionId, Date next);
	public UsersVO checkUserWithSessionKey(String value);
	public List<UsersVO> userAll()throws Exception;
	public Integer userWithdrawal(UsersVO users) throws Exception;
	public Integer yellowCard(UsersVO users) throws Exception;
}
