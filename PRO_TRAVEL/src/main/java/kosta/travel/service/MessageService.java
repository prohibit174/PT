package kosta.travel.service;

import java.util.List;

import kosta.travel.domain.MessageVO;

public interface MessageService {

	public void message_insert(MessageVO vo)throws Exception;

	public Integer max_num()throws Exception;

	public List<MessageVO> list(String u_id) throws Exception;
	
	public MessageVO detail_message(String m_num)throws Exception;
	
	
}
