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
	@Required  //@ annotation ��
	@Autowired //car �� carcenter�� ���� <qualifier value="cq1"/> �ۼ� ���ҽ� ���� ��. 
	public void setCar(@Qualifier(value="cq1") Car car1 , @Qualifier(value="cq2") Car car2) { //���� ����Ҷ�
		this.car = car1;
		this.car2 = car2;
	}
	/*@Required  //@ annotation ��
	@Autowired //car �� carcenter�� ���� <qualifier value="cq1"/> �ۼ� ���ҽ� ���� ��. 
	@Qualifier(value="cq1") //@Autowired �������� �ذ��ϱ� ���� ���
	public void setCar(Car car) {
		this.car = car;
	}*/
	
	

}
