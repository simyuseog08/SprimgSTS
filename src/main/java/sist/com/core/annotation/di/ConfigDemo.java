package sist.com.core.annotation.di;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

@Configuration
@ImportResource({"sist/com/basic/di/book.xml"}) //다른 패키지에 있는 정보를 받는다.
public class ConfigDemo {
	
	@Bean(name="getTb")
	public Table geTable() {
		return new Table("심유석 테이블",500,500);
	}
	@Bean
	public Html getHtml() {
		return new Html(new Table(), new TBody());
	}

}
