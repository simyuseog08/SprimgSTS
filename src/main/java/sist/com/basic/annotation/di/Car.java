package sist.com.basic.annotation.di;

public class Car {
	private String maker;
	private int price;
	private String modelName;
	
	
	
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getModelName() {
		return modelName;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	@Override
	public String toString() {
		return "Car [maker=" + maker + ", price=" + price + ", modelName=" + modelName + "]";
	}
	
	
	
	

}
