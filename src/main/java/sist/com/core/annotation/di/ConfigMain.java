package sist.com.core.annotation.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Configuration;

public class ConfigMain {
	
	public static void main(String[] args) {
		ApplicationContext app = new AnnotationConfigApplicationContext(ConfigDemo.class); //하나하나 설정해 줄 필요없이 @Configuration통해 경로를 받는다.
		//System.out.println(app.getBean("getHtml"));
		System.out.println(app.getBean("book1"));
	}

}
