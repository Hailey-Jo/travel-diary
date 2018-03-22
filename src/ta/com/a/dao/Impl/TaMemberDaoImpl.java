package ta.com.a.dao.Impl;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ta.com.a.dao.TaMemberDao;
import ta.com.a.model.MembersDto;

@Repository
public class TaMemberDaoImpl implements TaMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String ns = "TAMem.";

	@Override
	public MembersDto getLogin(MembersDto mdto) {
		System.out.println("TaMemberDaoImpl-getLogin");
		MembersDto mem = sqlSession.selectOne(ns+"TaLogin", mdto);
		return mem;
	}
	
	
}
