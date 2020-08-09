package sist.com.basic.annotation.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppMain {
	
	public static void main(String[] args) {
		//System.out.println(app.getBean("car"));
		/*ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/annotation/di/car.xml");
		Carcenter cc = (Carcenter)app.getBean("cct");
		System.out.println(cc.getCar());
		System.out.println(cc.getCar2());*/
		
		/*ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/annotation/di/computer.xml");
		
		Store store = (Store) app.getBean("store");
		
		System.out.println(store.getComputer());*/
		
		
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/annotation/di/member.xml");
		
		System.out.println(app.getBean("member"));
		
	}

}
