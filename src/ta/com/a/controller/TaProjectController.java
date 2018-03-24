package ta.com.a.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class TaProjectController {


	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
/*	@Autowired
	KhMemberService khMemberService;*/
/*	
	@RequestMapping(value="popular.do", method=RequestMethod.GET)
	public String login(Model model) {
		logger.info("TaProjectController popular");
		return "popular.tiles";
	}*/
	
	@RequestMapping(value="projectwrite.do", method=RequestMethod.GET)
	public String projectwrite(Model model) {
		logger.info("TaProjectController projectwrite");
		return "projectwrite.tiles";
	}
	
	
	
	

}
