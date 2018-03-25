package ta.com.a.dao;

import ta.com.a.model.D_PostsDto;
import ta.com.a.model.ProjectsDto;

public interface TaProjectDao {

	public int getSequenceNum();
	
	public void addProject(ProjectsDto pdto);
	
	public int getSequenceNum2();
	public void addPost(D_PostsDto dpdto);
}
