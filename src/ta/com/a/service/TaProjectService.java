package ta.com.a.service;

import ta.com.a.model.D_PostsDto;
import ta.com.a.model.ProjectsDto;

public interface TaProjectService {
	
	public int addProject(ProjectsDto pdto);
	
	public int addPost(D_PostsDto dpdto);

}
