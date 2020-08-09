package sist.com.basic.annotation.di;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class Store {
	@Resource(name="computer1") //auto 대신사용,먼저 실행됨
	private Computer computer;
	
	@PostConstruct
	public void initStore() {
		System.out.println("initStore");
	}
	
	@PreDestroy
	public void destoryStore() {
		System.out.println("destoryStore");
	}
	
	public Computer getComputer() {
		return computer;
	}
	@Required
	@Resource(name="computer2") //auto 대신사용, 선언부 선언가능
	//@Autowired
	public void setComputer(Computer computer) {
		this.computer = computer;
	}
	
	
	

}
