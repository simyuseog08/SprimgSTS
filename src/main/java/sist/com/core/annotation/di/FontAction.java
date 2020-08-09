package sist.com.core.annotation.di;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component(value="FontAction")
@Scope(value="singleton")
public class FontAction {	
	@Value("±¼¸²")
	private String face;
	@Value("25")
	private int size;
	@Value("true")
	private boolean bold;
	
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public boolean isBold() {
		return bold;
	}
	public void setBold(boolean bold) {
		this.bold = bold;
	}
	@Override
	public String toString() {
		return "Font [face=" + face + ", size=" + size + ", bold=" + bold + "]";
	}
	
	
	

}
