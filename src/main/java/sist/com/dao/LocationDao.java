package sist.com.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component //�⺻�� �̱�����
public class LocationDao {
	public void insertParam() {
		System.out.println("insertParam");
	}
	
	public List<String>locationSelect(){
		ArrayList<String>list = new ArrayList<String>();
		list.add("����");
		list.add("����");
		list.add("����");
		return list;
		
	}
	
	public void updateHit() {
		System.out.println("updateHit");
	}

}
