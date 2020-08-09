package sist.com.basic.di;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class ApplicationMain {
	
	public static void main(String[] args) {
		//ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/di/person.xml");
		//System.out.println(app.getBean("person1")); //정상적인 경로가 나올시 sist.com.basic.di.Person@57baeedf출력됨 단 개인경로마다 다름
													/*싱글턴: sist.com.basic.di.Person@57baeedf
													 * 프로토타입:sist.com.basic.di.Person@4883b407
													 * */
		
		//Person p = (Person) app.getBean("person3"); //형변환 시켜줘야함 
		//System.out.println(p);
		
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/di/book.xml"); //경로가 잘 맞아야 실행 가능함 경로중요!!!
		
		CollectionEx c = (CollectionEx) app.getBean("collection1"); //book.xml에서 설정한 id 값으로 설정
		//((Book)app.getBean("book1")).setBookName("유석정석");
		
		//System.out.println(c.getProperties());
		
		/*Properties properties = c.getProperties();
		
		Iterator<Entry<Object, Object>>properit = properties.entrySet().iterator();
		
		while(properit.hasNext()) {
			Entry<Object, Object>entry = properit.next();
			System.out.println("proper key:"+entry.getKey()+" proper value:"+entry.getValue());
		}*/
		
		
		Map<Integer, Book>map = c.getMap();  //클래스에서 설정해준 컬렉션으로 설정해야됨
		
		Iterator<Entry<Integer, Book>> mapit = map.entrySet().iterator();
		
		while(mapit.hasNext()) {
			Entry<Integer, Book> entry = mapit.next();
			System.out.println("map key:"+entry.getKey()+" map value:"+entry.getValue());
		}
		
		
		
		for(Map.Entry<Integer, Book> entry : map.entrySet()) {
			System.out.println("key:"+entry.getKey()+" value:"+entry.getValue());
		}
		
		
	/*	
		for(Book b: c.getList()) {
			System.out.println("여기는 List 결과: "+b);
		}
		
		Iterator<Book> it = c.getSet().iterator();
		while(it.hasNext()){
			System.out.println("여기는 set 결과: "+it.next());
			
		}*/
		
		//Book b = (Book)app.getBean("book1");
		
		/*System.out.println((Book)app.getBean("book1")); //싱글턴은 단한번 만들어 지는 것임
		((Book)app.getBean("book1")).setBookName("유석정석");
		System.out.println((Book)app.getBean("book1"));
		
		
		System.out.println((Book)app.getBean("book2")); //프로토타입는 늘 언제나 new를생성 즉, 새로운 객체를 늘 생성하기 때문에 값이 유지 되지않음.
		((Book)app.getBean("book2")).setBookName("오야봉의정석");
		System.out.println((Book)app.getBean("book2"));*/
		
		
	}

}
