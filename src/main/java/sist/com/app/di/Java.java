package sist.com.app.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Java {
	@Value("siProject")
	private String projectName;
	@Value("55¿œ")
	private String date;
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Java [projectName=" + projectName + ", date=" + date + "]";
	}
	
	

}
