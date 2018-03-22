package ta.com.a.model;

public class DDayDto {
	private int seq; // 시퀀스 넘버
	private String id; // 작성자 아이디
	private String startDay; // 출발일자
	private String lastDay; // 도착일자
	private String contents; // 디데이 내용

	public DDayDto() {
		super();
	}

	public DDayDto(int seq, String id, String startDay, String lastDay, String contents) {
		super();
		this.seq = seq;
		this.id = id;
		this.startDay = startDay;
		this.lastDay = lastDay;
		this.contents = contents;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStartDay() {
		return startDay;
	}

	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}

	public String getLastDay() {
		return lastDay;
	}

	public void setLastDay(String lastDay) {
		this.lastDay = lastDay;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "DDayDto [seq=" + seq + ", id=" + id + ", startDay=" + startDay + ", lastDay=" + lastDay + ", contents="
				+ contents + "]";
	}
}
