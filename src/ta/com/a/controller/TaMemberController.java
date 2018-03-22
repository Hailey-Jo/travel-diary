package ta.com.a.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ta.com.a.service.TaMemSerivce;


@Controller
public class TaMemberController {
	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
	@Autowired
	TaMemSerivce taMemService;

	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(Model model) {
		logger.info("TaMemberController login");
		return "home.tiles";
	}
	
	
	
	
}













