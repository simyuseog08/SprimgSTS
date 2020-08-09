package sist.com.bean;
public class BBsBean {
	private String writer;
	private String title;
	private String password;
	private String contents;
	
	
	
	
	public BBsBean() {
		super();
	}
	public BBsBean(String writer, String title, String password, String contents) {
		super();
		this.writer = writer;
		this.title = title;
		this.password = password;
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	@Override
	public String toString() {
		return "BBsBean [writer=" + writer + ", title=" + title + ", password=" + password + ", contents=" + contents
				+ "]";
	}
	
	
	
	

}
