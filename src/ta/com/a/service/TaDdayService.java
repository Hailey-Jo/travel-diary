package ta.com.a.service;

import ta.com.a.model.DDayDto;
import ta.com.a.model.ShowDdayDto;

public interface TaDdayService {

	public boolean addDday(DDayDto ddto);
	
	public ShowDdayDto getDday(String id);
}
