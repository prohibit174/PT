package kosta.travel.domain;

public class MessageVO {
	private int m_num;
	private String u_id_sender;
	private String u_id_recipient;
	private String m_category;
	private String m_date;
	private String m_status;
	private String m_content;
	
	public MessageVO(){}

	public MessageVO(int m_num, String u_id_sender, String u_id_recipient, String m_category, String m_date,
			String m_status, String m_content) {
		super();
		this.m_num = m_num;
		this.u_id_sender = u_id_sender;
		this.u_id_recipient = u_id_recipient;
		this.m_category = m_category;
		this.m_date = m_date;
		this.m_status = m_status;
		this.m_content = m_content;
	}

	public int getM_num() {
		return m_num;
	}

	public void setM_num(int m_num) {
		this.m_num = m_num;
	}

	public String getU_id_sender() {
		return u_id_sender;
	}

	public void setU_id_sender(String u_id_sender) {
		this.u_id_sender = u_id_sender;
	}

	public String getU_id_recipient() {
		return u_id_recipient;
	}

	public void setU_id_recipient(String u_id_recipient) {
		this.u_id_recipient = u_id_recipient;
	}

	public String getM_category() {
		return m_category;
	}

	public void setM_category(String m_category) {
		this.m_category = m_category;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getM_status() {
		return m_status;
	}

	public void setM_status(String m_status) {
		this.m_status = m_status;
	}

	public String getM_content() {
		return m_content;
	}

	public void setM_content(String m_content) {
		this.m_content = m_content;
	}

}
