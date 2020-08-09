package sist.com.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CoreController {
	
	@RequestMapping(value="mvcCore/addCookie.do")
	public String addCookieProcess(Model model ,@RequestHeader("Accept")String accept,HttpServletResponse response) {
		model.addAttribute("accept", accept);
		model.addAttribute("content", response.getContentType());
		Cookie cookie = new Cookie("color", "blue");
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		
		return "mvcCore/viewIndex";
	}
	@ExceptionHandler(ArithmeticException.class)
	public String arithmeticException() {
		
		return "error/arithmetic";
	}
	
	@RequestMapping(value="mvcCore/CookiePro.do")
	public String cookieProcess(Model model,@CookieValue(value="color",required=false)String color) {
		
		model.addAttribute("color", color==null?"white":color);
		return "mvcCore/resultCookie";
	}
	
	@RequestMapping(value="mvcCore/uiTest.do")
	public String uiProcess(Model model,int no,@CookieValue(value="color")String cc) {
		model.addAttribute("color", cc);
		int rs = 100/no;
		return "mvcCore/uiTestView";
	}
	


}
