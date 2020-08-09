package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import sist.com.bean.ProductBean;
import sist.com.bean.ReviewBean;


public class CartDao extends SqlSessionDaoSupport{
	
	public boolean loginCheck(String id , String pw) {
		String dbpass = this.getSqlSession().selectOne("loginCheck", id);
		
		return dbpass!=null&& dbpass.equals(pw)?true:false;
	}
	
	public void insertProduct(ProductBean bean) {
		this.getSqlSession().insert("insertProduct", bean);
	}
	
	
	public List<ProductBean>selectProduct(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectProduct",map);
	}
	
	public void deleteProduct(int no) {
		this.getSqlSession().delete("deleteProduct", no);
	}
	
	public List<ReviewBean> selectReview(int infopk) {
		return this.getSqlSession().selectList("selectReview", infopk);
	}
	
	public void insertReview(ReviewBean bean) {
		this.getSqlSession().insert("insertReview", bean);
	}
	
	public Object selectInfoProduct(int no) {
		return this.getSqlSession().selectOne("selectInfoProduct", no);
	}
	
	public void updateProduct(ProductBean bean) {
		this.getSqlSession().update("updateProduct", bean);
	}
	
	public List<ProductBean>selectChart(HashMap<String, Object>map2){
		return this.getSqlSession().selectList("selectChart",map2);
	}
	
	public int getSequence() {
		return this.getSqlSession().selectOne("getSequence");
	}
	
	
	
	
	
	

}
