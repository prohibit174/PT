package kosta.travel.persistence;

import kosta.travel.domain.DeclareVO;

public interface DeclareDAO {
	//�Ű� �Է�
	public void declare_insert(DeclareVO vo) throws Exception;
	
	//d_num �ڵ� ����
	public Integer d_maxNum() throws Exception;
}
