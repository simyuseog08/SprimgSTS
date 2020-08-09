package sist.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller //Spring MVC순서  2번 Handler Mapping
public class BasicController { //Spring MVC순서  3번 Controller 
	
	@RequestMapping(value="first.do") //모델 2의 cmd 역활
	public ModelAndView firstProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("firstView", "HelloSpring"); //모델지정
		modelAndView.setViewName("WEB-INF/views/firstPage"); //뷰 지정 servlet-context.xml에서 전체 경로로 설정해서 경로지정해줌
		return modelAndView;
	}
	@RequestMapping(value="second.do")
	public ModelAndView secondProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("secondView", "HelloSpring"); //모델지정 경로지정
		modelAndView.setViewName("mvc/secondPage"); //뷰 지정
		return modelAndView;
	}
	
	
	@RequestMapping(value="third.do")
	public ModelAndView thirdProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("thirdView", "HelloSpring"); //모델지정 경로지정
		modelAndView.setViewName("mvc/thirdPage"); //뷰 지정
		return modelAndView; //Spring MVC순서  4번 ModelAndView
 
	}

}
