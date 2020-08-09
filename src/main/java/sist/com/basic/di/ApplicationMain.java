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
		//System.out.println(app.getBean("person1")); //�������� ��ΰ� ���ý� sist.com.basic.di.Person@57baeedf��µ� �� ���ΰ�θ��� �ٸ�
													/*�̱���: sist.com.basic.di.Person@57baeedf
													 * ������Ÿ��:sist.com.basic.di.Person@4883b407
													 * */
		
		//Person p = (Person) app.getBean("person3"); //����ȯ ��������� 
		//System.out.println(p);
		
		ApplicationContext app = new FileSystemXmlApplicationContext("src/main/java/sist/com/basic/di/book.xml"); //��ΰ� �� �¾ƾ� ���� ������ ����߿�!!!
		
		CollectionEx c = (CollectionEx) app.getBean("collection1"); //book.xml���� ������ id ������ ����
		//((Book)app.getBean("book1")).setBookName("��������");
		
		//System.out.println(c.getProperties());
		
		/*Properties properties = c.getProperties();
		
		Iterator<Entry<Object, Object>>properit = properties.entrySet().iterator();
		
		while(properit.hasNext()) {
			Entry<Object, Object>entry = properit.next();
			System.out.println("proper key:"+entry.getKey()+" proper value:"+entry.getValue());
		}*/
		
		
		Map<Integer, Book>map = c.getMap();  //Ŭ�������� �������� �÷������� �����ؾߵ�
		
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
			System.out.println("����� List ���: "+b);
		}
		
		Iterator<Book> it = c.getSet().iterator();
		while(it.hasNext()){
			System.out.println("����� set ���: "+it.next());
			
		}*/
		
		//Book b = (Book)app.getBean("book1");
		
		/*System.out.println((Book)app.getBean("book1")); //�̱����� ���ѹ� ����� ���� ����
		((Book)app.getBean("book1")).setBookName("��������");
		System.out.println((Book)app.getBean("book1"));
		
		
		System.out.println((Book)app.getBean("book2")); //������Ÿ�Դ� �� ������ new������ ��, ���ο� ��ü�� �� �����ϱ� ������ ���� ���� ��������.
		((Book)app.getBean("book2")).setBookName("���ߺ�������");
		System.out.println((Book)app.getBean("book2"));*/
		
		
	}

}
