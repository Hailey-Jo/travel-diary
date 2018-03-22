package ta.com.a.model;

public class MembersDto {
	private int seg;//시퀀스넘버
	private String id;//아이디
	private String email;//이메일
	private String pwd; //패스워드
	private String sex; //성별
	private String age; //생년월일(나이)
	private int auth; //관리자인지 회원인지 구분
	private String profile_Img; //이미지 파일
	
	public MembersDto() {}

	public MembersDto(int seg, String id, String email, String pwd, String sex, String age, int auth,
			String profile_Img) {
		super();
		this.seg = seg;
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.sex = sex;
		this.age = age;
		this.auth = auth;
		this.profile_Img = profile_Img;
	}

	public int getSeg() {
		return seg;
	}

	public void setSeg(int seg) {
		this.seg = seg;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	public String getProfile_Img() {
		return profile_Img;
	}

	public void setProfile_Img(String profile_Img) {
		this.profile_Img = profile_Img;
	}

	@Override
	public String toString() {
		return "MembersDto [seg=" + seg + ", id=" + id + ", email=" + email + ", pwd=" + pwd + ", sex=" + sex + ", age="
				+ age + ", auth=" + auth + ", profile_Img=" + profile_Img + "]";
	}
	
	
}
