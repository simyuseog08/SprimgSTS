package sist.com.web;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import sist.com.bean.Bboard;
import sist.com.bean.paramBean;
import sist.com.dao.CrudDao;

@Controller //mapper 와  만나는곳
public class CrudController {
	@Inject
	//@Resource(name="crudDao") @Inject대신 사용가능
	private CrudDao dao;
	
	
	@RequestMapping(value="mod.do")
	@ResponseBody
	public paramBean modifyProcess(String data , int no, String job) {
		System.out.println(data+" "+no+" "+job);
		return data.equals(dao.passWordCheck(no))? new paramBean("success", job): new paramBean("faile", job);
		
	}
	
	public void streamEx(Bboard bboard,MultipartFile file) {
		String filePath="C:\\Users\\sist-214\\Desktop\\web\\src\\main\\webapp\\upload\\";
		FileOutputStream fos=null;
		try {
			fos=new FileOutputStream(new File(filePath+file.getOriginalFilename()));
			fos.write(file.getBytes());
			bboard.setFilename(file.getOriginalFilename());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value="modifyProcess.do")
	public String modifyPro(Bboard bboard,@RequestParam(value="file")MultipartFile file){
		if(bboard.getFilename()!=null)
			streamEx(bboard, file);
		System.out.println("성공");
		dao.updateModify(bboard);
		return "redirect:info.do?no="+bboard.getNo()+"&job=info";
	}
	
	

	
	
	@RequestMapping(value="de.do")
	@ResponseBody
	public paramBean deleteProcess(String data , int no, String job) {
		System.out.println(data+" "+no+" "+job);
		return data.equals(dao.passWordCheck(no))? new paramBean("success", job): new paramBean("faile", job);
	}
	
	@RequestMapping(value="delete.do")
	public String deleteBoard(int no) {
		dao.deleteBoard(no);
		return "redirect:bbsList.do";
	}
	
	@RequestMapping(value="search.do")
	@ResponseBody
	public List<Bboard>searchProcess(String query,String data){
		HashMap<String, Object>map = new HashMap<String, Object>();
		map.put("query", query);
		map.put("data", data);
		return dao.selectBoard(map);
	}
	
	@RequestMapping(value="bbsLogin.do")
	public String loginCheckForm(String id, String pass, HttpSession session) {
		System.out.println(id+" "+pass);
		if(dao.loginCrudCheck(id, pass)) {
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(30);
			dao.loginCrudCheck(id, pass);
			return "redirect:bbsList.do";
		}
		return "redirect:signin.jsp";
	}
	
	@RequestMapping(value="bbsList.do")
	public ModelAndView bbsListProcess() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("bbsList", dao.selectBoard(null));
		modelAndView.setViewName("board");
		return modelAndView;
	}
	
	@RequestMapping(value="info.do")
	public String infoProcess(Model model ,@RequestParam(value="no")int no,@RequestParam(value="job")String job,@RequestParam(value="page",required=false)String page) {
		model.addAttribute("info", dao.selectInfoBoard(no));
		return job.equals("info")?"info":"write";
	}
	
	@RequestMapping(value="download.do")
	public ModelAndView downLoadProcess(@RequestParam(value="filename",required=false)String filename) {
		String location ="C:\\Users\\sist-214\\Desktop\\web\\src\\main\\webapp\\upload\\";
		File file = new File(location+filename);
		return new ModelAndView("download", "downloadFile", file);
	}
	
	/*@RequestMapping(value="Writer.do")
	public String writerProcess(String name, String pw, String subject, String file,String textarea) {
		
		Bboard bboard = new Bboard();
		
		bboard.setName(name);
		bboard.setPw(pw);
		bboard.setSubject(subject);
		bboard.setFilename(file);
		bboard.setTextarea(textarea);
		
		dao.insertWriter(bboard);
		
		
		return "redirect:bbsList.do";
	}*/
	
	@RequestMapping(value="Writer.do")
	@Transactional //spring 에서는 commit 및 rollback을 하지않아서 @Transactional 대신씀.
	public String insertBoard(Bboard bboard, @RequestParam(value="file")MultipartFile file) {
		System.out.println(bboard);
		String filePath="C:\\Users\\sist-214\\Desktop\\web\\src\\main\\webapp\\upload\\";
		FileOutputStream fos = null;
		try {
		fos = new FileOutputStream(new File(filePath+file.getOriginalFilename()));
		fos.write(file.getBytes());
		bboard.setFilename(file.getOriginalFilename());
			dao.insertWriter(bboard);	

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return "redirect:bbsList.do";
	}

}
