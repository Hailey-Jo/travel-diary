package ta.com.a.dao.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ta.com.a.dao.TaProjectDao;
import ta.com.a.model.D_PostsDto;
import ta.com.a.model.ProjectsDto;
@Repository
public class TaProjectDaoImpl implements TaProjectDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String ns= "TAProject.";
	
	/*------------------------------------------------------------------------
	 * 	시퀀스 넘버가져와서 프로젝트작성
	*------------------------------------------------------------------------*/
	
	@Override
	public int getSequenceNum() {
		System.out.println("TaProjectDaoImpl getSequenceNum");
		ProjectsDto pdto = sqlSession.selectOne(ns+"getSequence");
		int seq = pdto.getSeq();
		System.out.println("TaProjectDaoImpl-seq: " + seq);
		return seq;
	}
	//프로젝트 입력
	@Override
	public void addProject(ProjectsDto pdto) {
		System.out.println("TaProjectDaoImpl addProject");
		int count = sqlSession.insert(ns+"addProject", pdto);
	}
	/*------------------------------------------------------------------------
	 * 	시퀀스 넘버가져와서 포스트작성
	*------------------------------------------------------------------------*/
	@Override
	public int getSequenceNum2() {
		System.out.println("TaProjectDaoImpl getSequenceNum2");
		D_PostsDto dpdto = sqlSession.selectOne(ns+"getSequence2");
		int seq = dpdto.getSeq();
		System.out.println("TaProjectDaoImpl-seq: " + seq);
		return seq;
	}
	@Override
	public void addPost(D_PostsDto dpdto) {
		System.out.println("TaProjectDaoImpl addPost");
		int count = sqlSession.insert(ns+"addPost", dpdto);		
	}
	
}
