package kosta.travel.persistence;

import java.util.List;

import javax.servlet.http.HttpSession;

import kosta.travel.domain.MessageVO;

public interface MessageDAO {
	public void message_insert(MessageVO vo) throws Exception;
	public Integer max_num()throws Exception;
	public List<MessageVO> list(String u_id_recipient) throws Exception;
	public MessageVO detail_message(int m_num) throws Exception;
	public Integer noRead_message(String u_id_recipient) throws Exception;
	public void message_update(int m_num) throws Exception;
	public List<MessageVO> list_received(String u_id)throws Exception;
	public List<MessageVO> list_send(String u_id)throws Exception;
}
