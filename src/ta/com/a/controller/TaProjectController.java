package ta.com.a.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ta.com.a.model.ProjectsDto;
import ta.com.a.service.TaProjectService;
@Controller
public class TaProjectController {


	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
	@Autowired
	TaProjectService taProjectService;
	/*	
	@RequestMapping(value="popular.do", method=RequestMethod.GET)
	public String login(Model model) {
		logger.info("TaProjectController popular");
		return "popular.tiles";
	}*/
	/*-------------------------------------------------------------------------------------
	 * 	프로젝트 작성 폼으로 이동
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="projectwrite.do", method=RequestMethod.GET)
	public String projectwrite(Model model) {
		logger.info("TaProjectController projectwrite");
		return "projectwrite.tiles";
	}
	/*-------------------------------------------------------------------------------------
	 * 	프로젝트 작성후 포스트 라이트 뷰로 이동
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="projectwriteAf.do", method=RequestMethod.POST)
	public String projectwriteAf(Model model, ProjectsDto pdto) {
		logger.info("TaProjectController projectwriteAf");
		logger.info("TaProjectController projectwriteAf pdto: "+pdto.toString());
		int seq = taProjectService.addProject(pdto);
		logger.info("TaProjectController seq:  "+seq);
		model.addAttribute("seq", seq);
		return "postwrite.tiles";
	}
	
	
	
	

}
