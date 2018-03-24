package ta.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ta.com.a.dao.TaMemberDao;
import ta.com.a.model.MembersDto;
import ta.com.a.service.TaMemSerivce;


@Service
public class TaMemServiceImpl implements TaMemSerivce {

	@Autowired
	TaMemberDao taMemberDao;

	@Override
	public MembersDto getLogin(MembersDto mdto) {
		// TODO Auto-generated method stub
		return taMemberDao.getLogin(mdto);
	}
	
	
}
