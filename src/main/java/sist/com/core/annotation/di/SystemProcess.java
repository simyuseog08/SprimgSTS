package sist.com.core.annotation.di;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
@Component
public class SystemProcess {
	@Resource
	DbServer dbServer;

	public DbServer getDbServer() {
		return dbServer;
	}

	public void setDbServer(DbServer dbServer) {
		this.dbServer = dbServer;
	}

	@Override
	public String toString() {
		return "SystemProcess [dbServer=" + dbServer + "]";
	}
	
	

	
	
	

}
