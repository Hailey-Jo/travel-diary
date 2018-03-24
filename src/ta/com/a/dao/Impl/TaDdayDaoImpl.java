package ta.com.a.dao.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ta.com.a.dao.TaDdayDao;
import ta.com.a.model.DDayDto;
import ta.com.a.model.ShowDdayDto;

@Repository
public class TaDdayDaoImpl implements TaDdayDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String ns ="TADday.";

	/*-------------------------------------------------------------------------------------
	 * 	디데이를 설정하는 부분
	 * 	디데이 입력을 성공하면 boolean true
	 *-------------------------------------------------------------------------------------*/
	@Override
	public boolean addDday(DDayDto ddto) {
		System.out.println("addDday.ddto: " + ddto.toString());
		int count = sqlSession.insert(ns+"addDday", ddto);
		return count>0?true:false;
	}
	/*-------------------------------------------------------------------------------------
	 * 	디데이를 가져오는 부분(해당 아이디의 최신 dday가져옴)
	 * 	디데이를 가져오면 ShowDdayDto로 리턴
	 *-------------------------------------------------------------------------------------*/
	@Override
	public ShowDdayDto getDday(String id) {
		System.out.println("getDday.id: " + id);
		ShowDdayDto sddto = sqlSession.selectOne(ns+"getDday", id);
		return sddto;
	}
}
