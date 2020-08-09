package sist.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller //Spring MVC����  2�� Handler Mapping
public class BasicController { //Spring MVC����  3�� Controller 
	
	@RequestMapping(value="first.do") //�� 2�� cmd ��Ȱ
	public ModelAndView firstProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("firstView", "HelloSpring"); //������
		modelAndView.setViewName("WEB-INF/views/firstPage"); //�� ���� servlet-context.xml���� ��ü ��η� �����ؼ� �����������
		return modelAndView;
	}
	@RequestMapping(value="second.do")
	public ModelAndView secondProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("secondView", "HelloSpring"); //������ �������
		modelAndView.setViewName("mvc/secondPage"); //�� ����
		return modelAndView;
	}
	
	
	@RequestMapping(value="third.do")
	public ModelAndView thirdProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("thirdView", "HelloSpring"); //������ �������
		modelAndView.setViewName("mvc/thirdPage"); //�� ����
		return modelAndView; //Spring MVC����  4�� ModelAndView
 
	}

}
