package ta.com.a.model;

public class MessagesDto {
	

	private int seq; //시퀀스넘버
	private String sender; //보낸 ID
	private String receiver; //받는 ID
	private String m_Contents; // 댓글내용
	private String m_Date; //보낸날짜
	private int m_Delete; //삭제여부
	private int m_Receive;// 수신 여부
	
	
	public MessagesDto() {
		super();
	}
	public MessagesDto(int seq, String sender, String receiver, String m_Contents, String m_Date, int m_Delete,
			int m_Receive) {
		super();
		this.seq = seq;
		this.sender = sender;
		this.receiver = receiver;
		this.m_Contents = m_Contents;
		this.m_Date = m_Date;
		this.m_Delete = m_Delete;
		this.m_Receive = m_Receive;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getM_Contents() {
		return m_Contents;
	}
	public void setM_Contents(String m_Contents) {
		this.m_Contents = m_Contents;
	}
	public String getM_Date() {
		return m_Date;
	}
	public void setM_Date(String m_Date) {
		this.m_Date = m_Date;
	}
	public int getM_Delete() {
		return m_Delete;
	}
	public void setM_Delete(int m_Delete) {
		this.m_Delete = m_Delete;
	}
	public int getM_Receive() {
		return m_Receive;
	}
	public void setM_Receive(int m_Receive) {
		this.m_Receive = m_Receive;
	}
	
	@Override
	public String toString() {
		return "MessagesDto [seq=" + seq + ", sender=" + sender + ", receiver=" + receiver + ", m_Contents="
				+ m_Contents + ", m_Date=" + m_Date + ", m_Delete=" + m_Delete + ", m_Receive=" + m_Receive + "]";
	} 
	
}
	