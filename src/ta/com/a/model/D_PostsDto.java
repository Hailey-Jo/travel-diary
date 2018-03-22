package ta.com.a.model;

public class D_PostsDto {
	private int seq;//시퀀스넘버
	private int p_Num; //프로젝트 테이블의 시퀀스 넘버
	private String id; //멤버테이블 아이디 
	private String city; //도시(포스트의 제목)
	private String continent; // 대륙
	private String country; //나라
	private String contents; //내용
	private String grade; //평점
	private int cashbook; //가계부 존재여부
	private String d_Date; //방문일정(1년전 오늘 이용)
	private String map; //map그림 경로 불러옴
	private int d_Delete; // 게시글 삭제여부
	private String img1; //사진경로1
	private String img2; //사진경로2
	private String img3; //사진경로3
	private String img4; //사진경로4
	
	public D_PostsDto() {}

	public D_PostsDto(int seq, int p_Num, String id, String city, String continent, String country, String contents,
			String grade, int cashbook, String d_Date, String map, int d_Delete, String img1, String img2, String img3,
			String img4) {
		super();
		this.seq = seq;
		this.p_Num = p_Num;
		this.id = id;
		this.city = city;
		this.continent = continent;
		this.country = country;
		this.contents = contents;
		this.grade = grade;
		this.cashbook = cashbook;
		this.d_Date = d_Date;
		this.map = map;
		this.d_Delete = d_Delete;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
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

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getContinent() {
		return continent;
	}

	public void setContinent(String continent) {
		this.continent = continent;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getCashbook() {
		return cashbook;
	}

	public void setCashbook(int cashbook) {
		this.cashbook = cashbook;
	}

	public String getD_Date() {
		return d_Date;
	}

	public void setD_Date(String d_Date) {
		this.d_Date = d_Date;
	}

	public String getMap() {
		return map;
	}

	public void setMap(String map) {
		this.map = map;
	}

	public int getD_Delete() {
		return d_Delete;
	}

	public void setD_Delete(int d_Delete) {
		this.d_Delete = d_Delete;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	@Override
	public String toString() {
		return "D_PostsDto [seq=" + seq + ", p_Num=" + p_Num + ", id=" + id + ", city=" + city + ", continent="
				+ continent + ", country=" + country + ", contents=" + contents + ", grade=" + grade + ", cashbook="
				+ cashbook + ", d_Date=" + d_Date + ", map=" + map + ", d_Delete=" + d_Delete + ", img1=" + img1
				+ ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + "]";
	}

	
	
	
	
}
