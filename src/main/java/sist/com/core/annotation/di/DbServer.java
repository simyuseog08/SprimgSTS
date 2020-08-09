package sist.com.core.annotation.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class DbServer {
	@Value("${mydb1.serverName}")
	private String serverName;
	@Value("${mydb1.ip}")
	private String ip;
	@Value("${mydb1.port}")
	private int port;
	@Value("${mydb1.url}")
	private String url;
	public String getServerName() {
		return serverName;
	}
	public void setServerName(String serverName) {
		this.serverName = serverName;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getPort() {
		return port;
	}
	public void setPort(int port) {
		this.port = port;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	@Override
	public String toString() {
		return "DbServer [serverName=" + serverName + ", ip=" + ip + ", port=" + port + ", url=" + url + "]";
	}
	
	

}
