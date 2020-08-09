package sist.com.core.annotation.di;

import org.springframework.stereotype.Component;

@Component
public class Table {
	private String tableName;
	private int width;
	private int height;
	
	
	
	public Table() {
		super();
	}
	
	
	
	public Table(String tableName, int width, int height) {
		super();
		this.tableName = tableName;
		this.width = width;
		this.height = height;
	}



	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	
	

}
