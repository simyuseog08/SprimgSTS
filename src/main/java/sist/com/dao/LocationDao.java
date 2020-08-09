package sist.com.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component //기본이 싱글턴임
public class LocationDao {
	public void insertParam() {
		System.out.println("insertParam");
	}
	
	public List<String>locationSelect(){
		ArrayList<String>list = new ArrayList<String>();
		list.add("딸기");
		list.add("수박");
		list.add("레몬");
		return list;
		
	}
	
	public void updateHit() {
		System.out.println("updateHit");
	}

}
