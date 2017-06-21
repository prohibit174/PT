package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.DeclareVO;

public interface DeclareDAO {
	//�Ű� �Է�
	public void declare_insert(DeclareVO vo) throws Exception;
	//d_num �ڵ� ����
	public Integer d_maxNum() throws Exception;
	//�Ű� ����Ʈ
	public List<DeclareVO> declare_list() throws Exception;
}
