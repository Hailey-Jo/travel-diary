package ta.com.a.model;

public class CashBookDto {
	private int seq;//시퀀스넘버
	private int d_Num; //그룹번호(d_post의 seq넘버를 외래키로 받아온것)
	private String list;
	private String c_Memo;
	private int price;
	private String payment;

	public CashBookDto() {}

	public CashBookDto(int seq, int d_Num, String list, String c_Memo, int price, String payment) {
		super();
		this.seq = seq;
		this.d_Num = d_Num;
		this.list = list;
		this.c_Memo = c_Memo;
		this.price = price;
		this.payment = payment;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getD_Num() {
		return d_Num;
	}

	public void setD_Num(int d_Num) {
		this.d_Num = d_Num;
	}

	public String getList() {
		return list;
	}

	public void setList(String list) {
		this.list = list;
	}

	public String getC_Memo() {
		return c_Memo;
	}

	public void setC_Memo(String c_Memo) {
		this.c_Memo = c_Memo;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "CashBookDto [seq=" + seq + ", d_Num=" + d_Num + ", list=" + list + ", c_Memo=" + c_Memo + ", price="
				+ price + ", payment=" + payment + "]";
	}
	
	
}
