package ta.com.a.model;

public class CommentsDto {
	private int seq; // 시퀀스 넘버
	private int p_Num; // 프로젝트 테이블의 시퀀스넘버
	private String id; // 남긴사람id
	private String c_Contents; // 댓글내용
	private int delete; // 삭제여부
	private String c_Date; // 작성날짜
	private int c_Group; // 답글을 위해
	private int c_Dept; // 답글을 위해
	private int c_Step;// 답글을 위해

	public CommentsDto() {
	}

	public CommentsDto(int seq, int p_Num, String id, String c_Contents, int delete, String c_Date, int c_Group,
			int c_Dept, int c_Step) {
		super();
		this.seq = seq;
		this.p_Num = p_Num;
		this.id = id;
		this.c_Contents = c_Contents;
		this.delete = delete;
		this.c_Date = c_Date;
		this.c_Group = c_Group;
		this.c_Dept = c_Dept;
		this.c_Step = c_Step;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getP_Num() {
		return p_Num;
	}

	public void setP_Num(int p_Num) {
		this.p_Num = p_Num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getC_Contents() {
		return c_Contents;
	}

	public void setC_Contents(String c_Contents) {
		this.c_Contents = c_Contents;
	}

	public int getDelete() {
		return delete;
	}

	public void setDelete(int delete) {
		this.delete = delete;
	}

	public String getC_Date() {
		return c_Date;
	}

	public void setC_Date(String c_Date) {
		this.c_Date = c_Date;
	}

	public int getC_Group() {
		return c_Group;
	}

	public void setC_Group(int c_Group) {
		this.c_Group = c_Group;
	}

	public int getC_Dept() {
		return c_Dept;
	}

	public void setC_Dept(int c_Dept) {
		this.c_Dept = c_Dept;
	}

	public int getC_Step() {
		return c_Step;
	}

	public void setC_Step(int c_Step) {
		this.c_Step = c_Step;
	}

	@Override
	public String toString() {
		return "CommentsDto [seq=" + seq + ", p_Num=" + p_Num + ", id=" + id + ", c_Contents=" + c_Contents
				+ ", delete=" + delete + ", c_Date=" + c_Date + ", c_Group=" + c_Group + ", c_Dept=" + c_Dept
				+ ", c_Step=" + c_Step + "]";
	}

	

	
}
