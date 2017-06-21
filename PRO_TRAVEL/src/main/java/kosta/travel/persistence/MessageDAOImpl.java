package kosta.travel.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kosta.travel.domain.MessageVO;

@Repository
public class MessageDAOImpl implements MessageDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = 
			"kosta.travel.mappers.messageMapper";
	
	@Override
	public void message_insert(MessageVO vo) throws Exception {
		session.insert(namespace+".message_insert", vo);
	}

	@Override
	public Integer max_num() throws Exception {
		return session.selectOne(namespace+".max_num");
	}

	@Override
	public List<MessageVO> list(String u_id_recipient) throws Exception {
	
		List<MessageVO> list = session.selectList(namespace+".list", u_id_recipient);
		return list;
	}

	@Override
	public MessageVO detail_message(int m_num) throws Exception {
		return session.selectOne(namespace + ".detail_message", m_num);
	}

	@Override
	public Integer noRead_message(String u_id_recipient) throws Exception {
		return session.selectOne(namespace + ".noRead_message",u_id_recipient);
	}

	@Override
	public void message_update(int m_num) throws Exception {
		session.update(namespace+".update_message", m_num);
		
	}

}
