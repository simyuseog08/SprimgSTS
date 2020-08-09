package sist.com.basic.annotation.di;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;

public class Carcenter {
	private Car car;
	private Car car2;
	
	
	public Car getCar2() {
		return car2;
	}
	
	public Car getCar() {
		return car;
	}
	@Required  //@ annotation 임
	@Autowired //car 랑 carcenter랑 묶음 <qualifier value="cq1"/> 작성 안할시 오류 남. 
	public void setCar(@Qualifier(value="cq1") Car car1 , @Qualifier(value="cq2") Car car2) { //복수 사용할때
		this.car = car1;
		this.car2 = car2;
	}
	/*@Required  //@ annotation 임
	@Autowired //car 랑 carcenter랑 묶음 <qualifier value="cq1"/> 작성 안할시 오류 남. 
	@Qualifier(value="cq1") //@Autowired 문제점을 해결하기 위해 사용
	public void setCar(Car car) {
		this.car = car;
	}*/
	
	

}
