package sist.com.web;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Vector;

import javax.inject.Inject;
import javax.inject.Qualifier;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.tracing.dtrace.ModuleAttributes;
import com.sun.xml.internal.ws.assembler.dev.TubelineAssemblyContextUpdater;

import sist.com.dao.LocationDao;

@Controller
@SessionAttributes(value= {"vlist","array","data"})
public class LocationController {
	//@Autowired spring 제한적임, LocationController 랑  LocationDao 묶어줌
	@Inject //jsp,spring 둘다 쓸 수 있음 범용적임
	private LocationDao dao;
	
	@RequestMapping(value="mvcLocation/locationHit.do",method=RequestMethod.GET) //명시 안해 줘도 get으로 받음
	public String hitProcess(@RequestParam(value="no",required=false)int no,@RequestParam(value="job",required=false)String job,@RequestParam(value="page",required=false)String page,RedirectAttributes attr) {
		//System.out.println(no);
		dao.updateHit();
		attr.addAttribute("no", no);
		attr.addAttribute("job", job);
		attr.addAttribute("page", page);
		return "redirect:info.do";
	}
	
	@ModelAttribute(name="vlist")
	public List<String> selectBean(){
		Vector<String>vector = new Vector<String>();
		vector.add("서울");
		vector.add("경기");
		vector.add("강원");
		vector.add("전라");
		vector.add("경상");
		
		return vector;
	}
	
/*	@ModelAttribute(name="map")
	public String selectmap(){
		Map<String, Entry<String, String>>map = null;
		
		
	}
	*/
	
	@RequestMapping(value="mvcModel/vList.do")
	public String modelAttributePro1(Model model) {
		model.addAttribute("string", "java/oop/spring");
		return "mvcModel/vList1";
	}
	
	@ModelAttribute(value="array")
	public String[] arrayString() {
		String [] str = {"java","xml","spring","oop"};
		return str;
	}
	@RequestMapping(value="mvcModel/arrayString.do")
	public String modelAttributePro2(Model model) {
		model.addAttribute("data", "SpringValue");
		return  "redirect:vList2.jsp";
	}
	
	@RequestMapping(value="mvcLocation/info.do")
	public String infoProcess(Model model,@RequestParam(value="no",required=false)int no,@RequestParam(value="job",required=false)String job,@RequestParam(value="page",required=false)String page) {
		model.addAttribute("info","infoAction");
		System.out.println("infiNo:"+no+" job:"+job+" page:"+page);
		return job.equals("info")?"mvcLocation/info":"mvcLocation/modify";
	}
	
	
	@RequestMapping(value="mvcLocation/insert.do")
	public String locationInesert(@RequestParam(value="no",required=false)int no, @RequestParam(value="title",required=false)String title,@RequestParam(value="writer",required=false)String writer) {
		System.out.println(no+1+" "+title+" "+writer);
		dao.insertParam();
		return "redirect:listLocation.do";
	}
	@RequestMapping("mvcLocation/listLocation.do")
	public ModelAndView locationList() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list",dao.locationSelect());
		modelAndView.setViewName("mvcLocation/locList");
		return modelAndView;
		
		
	}
	
	@RequestMapping("mvcLocation/app4.do")  	//void로 하면 특정페이지로 못감 즉, @RequestMapping("mvcLocation/app4.do")가 url이 됨. 
												//리턴값이 존재하지않기에 404에러
	public void applocationPro4(Model model) {
		model.addAttribute("app4", "OOPProcess");
	}
	
	
	@RequestMapping("mvcLocation/app3.do") //void가 아니므로 handler임 
	public String applocationPro3( Model model) {
		model.addAttribute("msg","MessageSay");
		return "mvcLocation/appView3"; //리턴값이 url임.
	}
	
	@RequestMapping(value="mvcLocation/app.do") //리다이렉트 설정
	public ModelAndView applocationTest1() {
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("key", "LOCATIONPROCESS");
		modelAndView.setViewName("mvcLocation/appPro");
		return modelAndView;
	}
	
	
	@RequestMapping (value="rProcess.do")
	public String rprocessEx(Model model) {
		model.addAttribute("say","SAYMESSAGE");
		
		return "rView";
	}
	
	@RequestMapping(value="mvcLocation/app2.do")
	public String appProcessEx() {
		return "redirect:appViewPro.jsp";
	}
	
	@RequestMapping(value="springMessage.do")
	public ModelAndView messageSay(@RequestParam(value="msg",required=false)String msg) { //required=false 파라미터 값을 받음, true 면 안받음
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("say", "HelloSpring");
		String temp="viewView";
		if(msg!=null &&msg.equals("hello")) {
			temp="viewView";
		}
		else if(msg!=null &&msg.equals("hi")) {
			temp="viewViewHi";
		}
		modelAndView.setViewName(temp);
		return modelAndView;
		
	}
	
	
	

	
	
	
	
	
}
