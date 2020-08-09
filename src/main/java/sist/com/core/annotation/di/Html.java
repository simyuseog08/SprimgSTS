package sist.com.core.annotation.di;

import org.springframework.context.annotation.Bean;

public class Html {
	private Table table;
	private TBody tBody;

	public Html(Table table) {
		super();
		this.table = table;
	}

	public Html(Table table, TBody tBody) {
		super();
		this.table = table;
		this.tBody = tBody;
	}

	@Override
	public String toString() {
		return "Html [table=" + table + ", tBody=" + tBody + "]";
	}
	
	
	
	

}
