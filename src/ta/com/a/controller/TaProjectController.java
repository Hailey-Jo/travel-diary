package ta.com.a.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ta.com.a.model.D_PostsDto;
import ta.com.a.model.ProjectsDto;
import ta.com.a.service.TaProjectService;
@Controller
public class TaProjectController {


	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	

	@Autowired
	TaProjectService taProjectService;

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
	/*-------------------------------------------------------------------------------------
	 * 	포스트 작성하기
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="postwriteAf.do", method=RequestMethod.POST)
	public String postwriteAf(Model model, D_PostsDto dpdto) {
		logger.info("TaProjectController postwriteAf");
		logger.info("TaProjectController postwriteAf dpdto: "+dpdto.toString());
		
		////////////지도경로: 위도경도(123.123, 123.123) 이걸 {lat:123.123, lng:123,123} 으로 바꾸기//////////////////////////
		String _map[] = dpdto.getMap().substring(1, dpdto.getMap().length()-1).split(", ");
		for (int i = 0; i < _map.length; i++) {
			logger.info("_map["+i+"]"+_map[i]);
		}
		String map="{lat:"+_map[0]+", lng:"+_map[1]+"}";
		dpdto.setMap(map);
		logger.info("map"+dpdto.getMap());
		///////////////////////////////////////////////////////////////////////////////////////////////////
		
		taProjectService.addPost(dpdto);
		model.addAttribute("d_Num", dpdto.getSeq());
		return "cashbook.tiles";

	}
	
	
	

}
