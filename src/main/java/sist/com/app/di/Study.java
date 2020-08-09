package sist.com.app.di;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component
public class Study {
	private Java java;

	public Java getJava() {
		return java;
	}
	@Inject
	public void setJava(Java java) {
		this.java = java;
	}

	@Override
	public String toString() {
		return "Study [java=" + java + "]";
	}
	
	

}
