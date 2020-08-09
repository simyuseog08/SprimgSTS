package sist.com.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.com.bean.Bboard;
import sist.com.bean.Board;

public class CrudDao extends SqlSessionDaoSupport{
	
	public boolean loginCrudCheck(String id , String pass) {
		String dbpass = this.getSqlSession().selectOne("loginCrudCheck", id);
		
		return dbpass!=null&& dbpass.equals(pass)?true:false;
	}
	
	public void insertWriter(Bboard board) {
		
		this.getSqlSession().insert("insertWriter",board);
	}
	
	public void updateModify(Bboard bboard) {
		this.getSqlSession().update("updateModify", bboard);
	}
	
	public List<Bboard>selectBoard(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectBoard",map);
	}
	
	public Object selectInfoBoard(int no) {
		return this.getSqlSession().selectOne("selectInfoBoard", no);
	}
	
	public void deleteBoard(int no) {
		this.getSqlSession().delete("deleteBoard", no);
	}
	
	public String passWordCheck(int no) {
		return this.getSqlSession().selectOne("passWordCheck", no);
	}
	
	
	

}
