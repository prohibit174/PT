package kosta.travel.service;

import java.util.List;

import javax.inject.Inject;

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
	public List<MessageVO> list() throws Exception {
		return dao.list();
	}

}
