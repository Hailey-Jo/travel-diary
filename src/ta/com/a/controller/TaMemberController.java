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
import ta.com.a.service.TaMemSerivce;


@Controller
public class TaMemberController {
	private static final Logger logger = LoggerFactory.getLogger(TaMemberController.class);
	
	@Autowired
	TaMemSerivce taMemService;

	// 로그인 
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String login(Model model,String Login_Id, String Login_pwd, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		logger.info("TaMemberController login");
		
		MembersDto mdto = new MembersDto();
		mdto.setId(Login_Id);
		mdto.setPwd(Login_pwd);
		logger.info(mdto.toString());
		
		//세션저장
		MembersDto login = taMemService.getLogin(mdto);
		//로그인 성공
		if(login != null && !login.getId().equals("")) {
			HttpSession session =req.getSession(true);
			session.setAttribute("login", login);
			return "home.tiles";
		//로그인 실패
		}else {
			getAlert("아이디와 비밀번호가 일치하지 않습니다.", resp, "location.href='index.jsp';");
			return "";
		}
	
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













