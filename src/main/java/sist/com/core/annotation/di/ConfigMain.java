package sist.com.core.annotation.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Configuration;

public class ConfigMain {
	
	public static void main(String[] args) {
		ApplicationContext app = new AnnotationConfigApplicationContext(ConfigDemo.class); //�ϳ��ϳ� ������ �� �ʿ���� @Configuration���� ��θ� �޴´�.
		//System.out.println(app.getBean("getHtml"));
		System.out.println(app.getBean("book1"));
	}

}
