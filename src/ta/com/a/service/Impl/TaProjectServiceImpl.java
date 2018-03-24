package ta.com.a.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ta.com.a.dao.TaProjectDao;
import ta.com.a.model.ProjectsDto;
import ta.com.a.service.TaProjectService;

@Service
public class TaProjectServiceImpl implements TaProjectService {
	
	@Autowired
	TaProjectDao taProjectDao;

	/*------------------------------------------------------------------------------
	 * 시퀀스번호 받아서 프로젝트 입력후 다시 시퀀스번호 넘겨줌
	 * -------------------------------------------------------------------------------*/
	@Override
	public int addProject(ProjectsDto pdto) {
		int seq = taProjectDao.getSequenceNum();
		System.out.println("TaProjectServiceImpl-seq: "+seq);
		pdto.setSeq(seq);
		taProjectDao.addProject(pdto);
		return seq;
	}

	

}
