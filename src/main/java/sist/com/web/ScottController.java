package sist.com.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.com.bean.EmpBean;
import sist.com.dao.ScottDao;

@Controller
public class ScottController {
	
	@Resource(name="scottDao")
	private ScottDao dao;
	
	@RequestMapping(value="empList.do")
	public String empProselect(Model model, EmpBean bean) {
		model.addAttribute("empList",dao.selectProcess(bean));
		return "empResult";
	}
	
	
	@RequestMapping(value="empListIN.do")
	@ResponseBody
	public List<EmpBean> empInSelect(Model model,@RequestParam(value="val",required=false)String val) {
		HashMap<String, Object>map = new HashMap<String, Object>();
		//System.out.println("val: "+val);
		val=val.substring(0, val.lastIndexOf(','));
		//System.out.println("val: "+ val);
		//String []str = {"7369","7499","7521","7566","7654"};
		String []str =val.split(",");
		map.put("empnos", str); //배열이니깐 컬렉션 <foreach collection="empnos" index="index" item="i" open="(" close=")" separator="," >item 명은 아무거나 해도됨.
		//model.addAttribute("empList",dao.EmpselectIN(map));
		return dao.empselectIN(map) ;
	}
	
	@RequestMapping(value="empUpdate.do")
	public String updateEmpPro(EmpBean bean) {
		System.out.println(bean);
		dao.empUpdate(bean);
		return "redirect:empList.do";
	}
	
	

}
