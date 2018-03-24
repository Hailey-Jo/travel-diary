package ta.com.a.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
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
import org.springframework.web.bind.annotation.ResponseBody;

import ta.com.a.model.MembersDto;
import ta.com.a.model.ShowDdayDto;
import ta.com.a.service.TaDdayService;
import ta.com.a.service.TaMemSerivce;


@Controller
public class TaMemberController {
	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
	@Autowired
	TaMemSerivce taMemService;
	@Autowired
	TaDdayService taDdayService;
	/*-------------------------------------------------------------------------------------
	 * 	로그인 후 홈뷰로 이동(로그인 여부 확인 및 디데이정보가지고 이동)
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="login.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String login(Model model,String Login_Id, String Login_pwd, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		logger.info("TaMemberController login");
		HttpSession session =req.getSession(true);
		
		MembersDto Findlogin = (MembersDto)session.getAttribute("login");
		//dday용 이미 로그인한아이디가 있으면 dday만 가지고 감
		if(Findlogin != null && !Findlogin.getId().equals("")) {
			ShowDdayDto sddto = taDdayService.getDday(Findlogin.getId());
			model.addAttribute("sddto", sddto);
			return "home.tiles";
		//처음 로그인 했을경우
		}else {
			MembersDto mdto = new MembersDto();
			mdto.setId(Login_Id);
			mdto.setPwd(Login_pwd);
			logger.info(mdto.toString());
			
			//세션저장
			MembersDto login = taMemService.getLogin(mdto);
			//로그인 성공
			if(login != null && !login.getId().equals("")) {
				session.setAttribute("login", login);
				ShowDdayDto sddto = taDdayService.getDday(login.getId());
				model.addAttribute("sddto", sddto);
				return "home.tiles";
			//로그인 실패
			}else {
				getAlert("아이디와 비밀번호가 일치하지 않습니다.", resp, "location.href='index.jsp';");
				return "";
			}
		}
	
	}
	/*-------------------------------------------------------------------------------------
	 * 	로그아웃
	 *-------------------------------------------------------------------------------------*/
	@RequestMapping(value="logout.do", method= {RequestMethod.POST, RequestMethod.GET})
	public String logout(HttpServletRequest req) throws ServletException, IOException {
		logger.info("TaMemberController logout");
		HttpSession session =req.getSession(true);
		session.invalidate();
		return "logout.tiles";
	
	}
	
	
	
	//alert창 띄어주는 방법
	public void getAlert(String str, HttpServletResponse resp, String addr)throws ServletException, IOException {
		PrintWriter outs = resp.getWriter();
		 
		outs.println("<script language='javascript'>");
		outs.println("alert('"+str+"');");
		outs.println(addr); //뒤로이동
		outs.println("</script>");
		outs.close();

	}
	
	
}













