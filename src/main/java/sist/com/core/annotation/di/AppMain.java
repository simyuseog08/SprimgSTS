package sist.com.core.annotation.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class AppMain {
	
	public static void main(String[] args) {            
		ApplicationContext app=new FileSystemXmlApplicationContext("src/main/java/sist/com/core/annotation/di/font.xml");
		System.out.println(app.getBean("systemProcess"));
		
	}

}
