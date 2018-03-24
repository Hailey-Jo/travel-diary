package ta.com.a.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ta.com.a.model.DDayDto;
import ta.com.a.model.ShowDdayDto;
import ta.com.a.service.TaDdayService;

@Controller
public class TaDdayController {

	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
	@Autowired
	TaDdayService taDdayService;
	/*-------------------------------------------------------------------------------------
	 * 	로그인한 아이디의 최신디데이를 가져와서 디데이 폼으로 이동
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="dday.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String ddayform(Model model, String id, HttpServletRequest req) {
		
		logger.info("TaDdayController_ddayform");
		ShowDdayDto sddto = taDdayService.getDday(id);
		HttpSession session =req.getSession(true);
		session.setAttribute("sddto", sddto);
		return "dday.tiles";
	}
	
	/*-------------------------------------------------------------------------------------
	 *  디데이 입력 - 입력 후 다시 디데이 폼으로 이동
	 *-------------------------------------------------------------------------------------*/
	
	@RequestMapping(value="DdayWriteAf.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String addDdayAf(Model model, DDayDto ddto) {
		
		logger.info("TaDdayController_addDdayAf");
		logger.info(ddto.toString());
		taDdayService.addDday(ddto);

		return "redirect:/dday.do?id="+ddto.getId();
	}
}
