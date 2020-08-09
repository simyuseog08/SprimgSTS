package sist.com.web;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import sist.com.bean.EmpBean;
import sist.com.bean.Person;

@Controller
public class AjaxController {
	@RequestMapping(value="ajaxSpring/messageAction.do")
	public String messageProcess(Model model) {
		ArrayList<EmpBean>list = new ArrayList<EmpBean>();
		list.add(new EmpBean(7788,"심유석","STUDENT",5000));
		list.add(new EmpBean(7799,"오야지","MANAGER",9500));
		list.add(new EmpBean(7755,"오야봉","DOCTOR",8000));
		model.addAttribute("empList", list);
		
		return "ajaxSpring/ajaxResult";
	}
	
	@RequestMapping(value="/ajaxSpring/empList.do")
	public String empListProcess(Model model) {
		ArrayList<EmpBean>list = new ArrayList<EmpBean>();
		list.add(new EmpBean(7188,"심유석","STUDENT",5000));
		list.add(new EmpBean(7299,"오야지","MANAGER",9500));
		list.add(new EmpBean(7355,"오야봉","DOCTOR",8000));
		
		JsonArray jsonArray = new JsonArray(); //구글에서만든 json
		for(int i = 0; i <list.size(); i++) {
			EmpBean empBean = list.get(i);
			JsonObject jsonObject = new JsonObject();
			jsonObject.addProperty("empno", empBean.getEmpno());
			jsonObject.addProperty("ename", empBean.getEname());
			jsonObject.addProperty("job", empBean.getJob());
			jsonObject.addProperty("sal", empBean.getSal());
			
			jsonArray.add(jsonObject);
			
			
		}
		model.addAttribute("js", jsonArray);
		
		model.addAttribute("empList", list);
		return "ajaxSpring/empResult";
	}
	
	
	
	@RequestMapping(value="ajaxSpring/person.do")
	@ResponseBody //리턴값이 바디(dataType = text,json)로 감
	public ArrayList<Person> personProcess() {
		ArrayList<Person>list = new ArrayList<Person>();
		Person person1 = new Person("심유석",25,199);
		Person person2 = new Person("오야지",29,212);
		Person person3 = new Person("오야봉",31,220);
		list.add(person1);
		list.add(person2);
		list.add(person3);
		return list;
	}
	
	@RequestMapping(value="ajaxSpring/mapProcess.do")
	@ResponseBody
	public HashMap<String, String> mapDataPro(Model model) {
		HashMap<String, String>map = new HashMap<String, String>();
		map.put("id", "blue");
		map.put("img", "1.jpg");
		map.put("email", "dhdiwl@naver.com");
		//model.addAttribute("map", map);
		
		return map;
	}
	
	@RequestMapping(value="jQuery/ajaxCore/chart1.do")
	public void chartProcess(Model model) {
		String[] str = {"오야지","오야봉","심유석","네다십","일반인"};
		model.addAttribute("ch", str);
		
	}

}
