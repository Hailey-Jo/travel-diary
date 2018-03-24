package ta.com.a.model;

import java.io.Serializable;

//디데이 정보 가져오는 dto
public class ShowDdayDto implements Serializable {
	
	private String d_day;
	private String contents;
	
	public ShowDdayDto() {}

	public ShowDdayDto(String d_day, String contents) {
		super();
		this.d_day = d_day;
		this.contents = contents;
	}

	public String getD_day() {
		return d_day;
	}

	public void setD_day(String d_day) {
		this.d_day = d_day;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "ShowDdayDto [d_day=" + d_day + ", contents=" + contents + "]";
	}
	
	

}
