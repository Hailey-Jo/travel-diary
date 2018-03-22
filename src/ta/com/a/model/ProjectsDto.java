package ta.com.a.model;

public class ProjectsDto {
	// 본문 글쓰기

	private int seq; //시퀀스 넘버
	private String p_Title; //글 대표 제목
	private String likes; //좋아요(추천수)
	private String id; //작성자 아이디
	private int comments; //글 작성 내용
	private int delete; //삭제 여부
	private String p_Date; //작성날짜
	private String tag; //태그 작성

	public ProjectsDto() {
		super();
	}

	public ProjectsDto(int seq, String p_Title, String likes, String id, int comments, int delete, String p_date,
			String tag) {
		super();
		this.seq = seq;
		this.p_Title = p_Title;
		this.likes = likes;
		this.id = id;
		this.comments = comments;
		this.delete = delete;
		this.p_Date = p_date;
		this.tag = tag;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getP_Title() {
		return p_Title;
	}

	public void setP_Title(String p_Title) {
		this.p_Title = p_Title;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}

	public int getDelete() {
		return delete;
	}

	public void setDelete(int delete) {
		this.delete = delete;
	}

	public String getP_Date() {
		return p_Date;
	}

	public void setP_Date(String p_Date) {
		this.p_Date = p_Date;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "ProjectsDto [seq=" + seq + ", p_Title=" + p_Title + ", likes=" + likes + ", id=" + id + ", comments="
				+ comments + ", delete=" + delete + ", p_date=" + p_Date + ", tag=" + tag + "]";
	}
}
