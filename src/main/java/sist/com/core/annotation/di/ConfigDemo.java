package sist.com.core.annotation.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"sist/com/basic/di/book.xml"}) //�ٸ� ��Ű���� �ִ� ������ �޴´�.
public class ConfigDemo {
	
	@Bean(name="getTb")
	public Table geTable() {
		return new Table("������ ���̺�",500,500);
	}
	@Bean
	public Html getHtml() {
		return new Html(new Table(), new TBody());
	}

}
