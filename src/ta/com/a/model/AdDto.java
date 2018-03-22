package ta.com.a.model;

public class AdDto {
	private int seq;//시퀀스넘버
	private String ad1;//광고경로

	public AdDto() {}

	public AdDto(int seq, String ad1) {
		super();
		this.seq = seq;
		this.ad1 = ad1;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getAd1() {
		return ad1;
	}

	public void setAd1(String ad1) {
		this.ad1 = ad1;
	}

	@Override
	public String toString() {
		return "AdDto [seq=" + seq + ", ad1=" + ad1 + "]";
	}

	
	
}
