package sist.com.web;


import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.com.bean.ProductBean;
import sist.com.bean.ReviewBean;
import sist.com.dao.CartDao;

@Controller
public class CartController {
	@Inject
	private CartDao dao;
	
	@RequestMapping(value="adminLogin.do")
	public String loginAdmin(String id, String pw, HttpSession session) {
		if(dao.loginCheck(id, pw)) {
		session.setAttribute("id", id);
		session.setMaxInactiveInterval(500);
		
			return "redirect:productList.do";
		}
		
		return "redirect:/BaseBall/BaseMain.jsp";
	}
	
	@RequestMapping(value="cart/info.do")
	public ModelAndView selectproductInfo(@RequestParam(value="no")int no) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("info", dao.selectInfoProduct(no));
		//modelAndView.addObject("review", dao.selectReview(no));
		modelAndView.setViewName("cart/productInfo");
		return modelAndView;
	}
	
	@RequestMapping(value="productList.do")
	public ModelAndView selectAdminProductList() {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("selectAdminProductList");
		modelAndView.addObject("pList",dao.selectProduct(null));
		modelAndView.setViewName("cart/productAdd");
		return modelAndView;
	}
	@RequestMapping(value="productListSearch.do",method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView selectAdminProductListSearch(@RequestParam(value="query",required=false) String query, @RequestParam(value="data",required=false) String data ) {
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("selectAdminProductList"+" "+query+" "+data);
		HashMap<String, Object>map = new HashMap<String, Object>();
		map.put("query", query);
		map.put("data", data);
		modelAndView.addObject("pList",dao.selectProduct(map));
		System.out.println(dao.selectProduct(map));
		modelAndView.setViewName("cart/productAdd");
		return modelAndView;
	}
	
	@RequestMapping(value="productInsert.do")
	@Transactional
	public String productInsertPro(ProductBean bean, MultipartFile file) {
		String path = "C:\\Users\\sist-214\\Desktop\\web (2)\\web\\src\\main\\webapp\\cartUp\\";
		FileOutputStream fos=null;
		try {
			fos = new FileOutputStream(new File(path+file.getOriginalFilename()));
			fos.write(file.getBytes());
			bean.setFileName(file.getOriginalFilename());
			dao.insertProduct(bean);
			System.out.println(file.getOriginalFilename());
			System.out.println(bean);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return "redirect:productList.do";
	}
	
	@RequestMapping(value="deleteProduct.do")
	@Transactional
	public String deleteProcess(@RequestParam("no") int no) {
		System.out.println("deleteProcess"+" "+no);
		dao.deleteProduct(no);
		return "redirect:productList.do";
	}
	
	@RequestMapping("cart/cartDelete.do")
	@Transactional
	public String cartDelete(@RequestParam(value="no")int no, HttpSession session) {
		ArrayList<ProductBean>cart = (ArrayList<ProductBean>)session.getAttribute("cart");
		//ProductBean bean =(ProductBean)dao.selectInfoProduct(no); //중복된 값이 있는지 확인 하기위해 빈에 담음.
		for(int i = 0; i < cart.size(); i++) {
			if(cart.get(i).getNo()==no) {
				cart.remove(i);
			}
		}
		session.setAttribute("cart", cart);
		if(cart.size()==0) {
			return "redirect:clientList.do";
		}
		
		return "redirect:cartList.jsp";
	}
	
	@RequestMapping(value="updateModify.do")
	@ResponseBody
	public Object modifyProcess(int no) {
		return dao.selectInfoProduct(no);
	}
	
	@RequestMapping(value="update.do")
	@Transactional
	public String updateProcess(ProductBean bean) {
		System.out.println(bean);
		dao.updateProduct(bean);
		return "redirect:productList.do";
	}
	
	@RequestMapping(value="ajaxChart.do")
	@ResponseBody
	public String ajaxChatPro(Model model ,String id) {
		model.addAttribute("cList", id);
		//System.out.println(dao.selectChart());
		return "cart/ajaxChart";
	}
	
	
	@RequestMapping(value="cart/clientList.do")
	public String clientListProcess(Model model) {
		System.out.println("clientListProcess");
		
		model.addAttribute("clientList", dao.selectChart(null));
		return "cart/productList";
	}
	
	
	@RequestMapping(value="cart/clientListSearch.do", method= RequestMethod.POST)
	@ResponseBody
	public List<ProductBean> clientListProcess(Model model,@RequestParam(value="query")String query,@RequestParam(value="data")String data) {
		System.out.println("clientListSearch");
		System.out.println(query+" "+data);
		HashMap<String, Object>map2= new HashMap<String, Object>();
		map2.put("query", query);
		map2.put("data", data);
		System.out.println(dao.selectChart(map2));
		return dao.selectChart(map2); 
	}
	
	@RequestMapping(value="cart/cartAdd.do")
	public String cartAddAction(int no,HttpSession session) {
		ArrayList<ProductBean>cart = (ArrayList<ProductBean>)session.getAttribute("cart");
		if(cart==null) { //카트가 비어 있으면 새로 만들어줌.
			cart= new ArrayList<ProductBean>();
		}
		ProductBean bean =(ProductBean)dao.selectInfoProduct(no); //중복된 값이 있는지 확인 하기위해 빈에 담음.
		for(int i = 0; i < cart.size(); i++) {
			if(cart.get(i).getNo() == bean.getNo()) { //중복된값이 있으면 리턴
				return "cart/cartList";
			}
		}
		cart.add(bean);
		session.setAttribute("cart", cart);
		return "redirect:cartList.jsp";
	}
	
	@RequestMapping(value="reviewInsert.do") //루트로 들어옴.
	public String reviewInsertPro(ReviewBean bean) {
		//System.out.println(bean);
		dao.insertReview(bean);
		bean.setrNo(dao.getSequence());
		if(bean.getJob().equals("new")) {
			bean.setRef(bean.getrNo());
			bean.setPnum(bean.getrNo());
		}
		System.out.println(bean);
		return "redirect:cart/info.do?no="+bean.getPkno(); //루트로 들어와서 cart/ 로 씀.
	}

}
