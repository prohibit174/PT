package kosta.travel.persistence;

import kosta.travel.domain.UsersVO;
import kosta.travel.dto.LoginDTO;

public interface UserDAO {
	public UsersVO login(LoginDTO dto) throws Exception;
}
