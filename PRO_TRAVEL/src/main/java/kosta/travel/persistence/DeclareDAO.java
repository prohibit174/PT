package kosta.travel.persistence;

import java.util.List;

import kosta.travel.domain.DeclareVO;

public interface DeclareDAO {
	//�Ű� �Է�
	public void declare_insert(DeclareVO vo) throws Exception;
	//d_num �ڵ� ����
	public Integer d_maxNum() throws Exception;
	//�Ű� ����Ʈ
	public List<DeclareVO> myDeclare(String u_id) throws Exception;
	
	public List<DeclareVO> myDeclaration(String u_id) throws Exception;
	
	public List<DeclareVO> waitDeclare() throws Exception;
	
	public List<DeclareVO> acceptDeclare() throws Exception;
	
	public List<DeclareVO> rejectDeclare() throws Exception;
	
	public void accept(Integer d_num)throws Exception;
	
	public void reject(Integer d_num)throws Exception;
}
