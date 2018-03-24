package ta.com.a.dao;

import ta.com.a.model.ProjectsDto;

public interface TaProjectDao {

	public int getSequenceNum();
	
	public void addProject(ProjectsDto pdto);
}
