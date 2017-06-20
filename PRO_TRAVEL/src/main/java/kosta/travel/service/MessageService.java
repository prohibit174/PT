package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.MessageVO;

public interface MessageService {

	public void message_insert(MessageVO vo)throws Exception;

	public Integer max_num()throws Exception;

	public List<MessageVO> list(String u_id_recipient) throws Exception;
	
	public MessageVO detail_message(int m_num)throws Exception;
	
	public Integer noRead_message(String u_id_recipient)throws Exception;
	
	
}
