package ta.com.a.dao;

import ta.com.a.model.MembersDto;

public interface TaMemberDao {
	
	//로그인
	public MembersDto getLogin(MembersDto mdto);
}
