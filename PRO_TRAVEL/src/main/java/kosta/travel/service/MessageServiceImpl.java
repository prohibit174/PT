package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import kosta.travel.domain.MessageVO;
import kosta.travel.persistence.MessageDAO;

@Service
public class MessageServiceImpl implements MessageService {

	@Inject
	private MessageDAO dao;
	
	@Override
	public void message_insert(MessageVO vo) throws Exception {
		dao.message_insert(vo);
	}

	@Override
	public Integer max_num() throws Exception {
		return dao.max_num();
	}

	@Override
	public List<MessageVO> list(String u_id_recipient) throws Exception {
		System.out.println("service list method in");
		return dao.list(u_id_recipient);
	}

	@Override
	public MessageVO detail_message(int m_num) throws Exception {
		return dao.detail_message(m_num);
	}

	@Override
	public Integer noRead_message(String u_id_recipient) throws Exception {

		return dao.noRead_message(u_id_recipient);
	}

	@Override
	public void message_update(int m_num) throws Exception {
		dao.message_update(m_num);
		
	}

	@Override
	public List<MessageVO> list_received(String u_id) throws Exception {
		return dao.list_received(u_id);
	}

	@Override
	public List<MessageVO> list_send(String u_id) throws Exception {
		return dao.list_send(u_id);
	}

}
