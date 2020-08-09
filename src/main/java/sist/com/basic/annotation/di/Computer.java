package sist.com.basic.annotation.di;

public class Computer {
	private String modelName;
	private int price;
	private String hard;
	
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getHard() {
		return hard;
	}
	public void setHard(String hard) {
		this.hard = hard;
	}
	@Override
	public String toString() {
		return "Computer [modelName=" + modelName + ", price=" + price + ", hard=" + hard + "]";
	}
	
	

}
