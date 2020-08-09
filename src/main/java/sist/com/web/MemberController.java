package sist.com.web;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.com.bean.MemberBean;
import sist.com.bean.ZipCodeBean;
import sist.com.dao.MemberDao;

@Controller
public class MemberController {
	@Inject
	MemberDao dao;
	
	
	
	@RequestMapping(value="loginCheck.do")
	public String loginProcess(String id, String password, HttpSession session) {
		MemberBean bean = new MemberBean();
		bean = dao.selectMember(id);
		if(bean!=null) {
			if(bean.getPassword().equals(password)) {
				session.setAttribute("no", bean.getNo());
				session.setMaxInactiveInterval(30);
				
				if(bean.getAdmin().equals("1")) {
					return "redirect:productList.do";
				}
				return "redirect:main.do";
			}
			return "redirect:main.do";
		}

		return "redirect:main.do";
	}
	
	@RequestMapping(value="/customerView/logout.do")
	public String logoutProcess(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}
	
	@RequestMapping(value="/BaseBall/selectID.do")
	@ResponseBody
	public boolean selectID(String id) {
		return dao.selectID(id);
	}
	
	@RequestMapping(value="main.do")
	public String mainProcess(HttpSession session, Model model) {
		model.addAttribute("no",session.getAttribute("no"));
		return "/BaseBall/BaseMain";
	}
	
	@RequestMapping(value="/BaseBall/selectZipcode.do")
	@ResponseBody
	public List<ZipCodeBean> findAddressProcess(String data){
		return dao.findAddressProcess(data);
	}
	
	@RequestMapping(value="/BaseBall/insertMember.do")
	@Transactional
	public String memberInsertProcess(MemberBean bean) {
		dao.insertMember(bean);
		return "redirect:main.do";
	}
}


