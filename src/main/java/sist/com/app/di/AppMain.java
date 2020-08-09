package sist.com.app.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Component;

public class AppMain {
	public static void main(String[] args) {
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/app/di/study.xml");
		
		System.out.println(app.getBean("study")); //@Component를 쓰면 첫글자만 소문자 하면됨
		
		
		
	}

}
