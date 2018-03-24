package ta.com.a.dao;

import ta.com.a.model.DDayDto;
import ta.com.a.model.ShowDdayDto;

public interface TaDdayDao {
	//디데이추가
	public boolean addDday(DDayDto ddto);
	//디데이가져오기
	public ShowDdayDto getDday(String id);
}
