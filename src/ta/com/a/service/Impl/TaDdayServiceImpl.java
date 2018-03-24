package ta.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ta.com.a.dao.TaDdayDao;
import ta.com.a.model.DDayDto;
import ta.com.a.model.ShowDdayDto;
import ta.com.a.service.TaDdayService;


@Service
public class TaDdayServiceImpl implements TaDdayService {
	
	@Autowired
	TaDdayDao taDdayDao;

	@Override
	public boolean addDday(DDayDto ddto) {

		return taDdayDao.addDday(ddto);
	}

	@Override
	public ShowDdayDto getDday(String id) {

		return taDdayDao.getDday(id);
	}
	
	
}
