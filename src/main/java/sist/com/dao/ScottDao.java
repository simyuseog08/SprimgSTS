package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import sist.com.bean.EmpBean;

public class ScottDao extends SqlSessionDaoSupport{
	
	public List<EmpBean> selectProcess(EmpBean bean){
		
		return this.getSqlSession().selectList("selectProcess",bean);
	}
	
	public List<EmpBean> empselectIN(HashMap<String, Object>map){
		
		return this.getSqlSession().selectList("EmpselectIN",map);
	}
	
	@Transactional
	public void empUpdate(EmpBean bean) {
		this.getSqlSession().update("empUpdate", bean);
	}

}
