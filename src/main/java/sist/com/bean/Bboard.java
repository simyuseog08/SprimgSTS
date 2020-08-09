package sist.com.bean;

public class Bboard {
	private int no;
	private String name; 
	private String pw; 
	private String subject; 
	private String filename;
	private String textarea;
	private int hit;
	private String regdate;
	
	
	
	
	public Bboard() {
		super();
	}
	public Bboard(int no, String name, String pw, String subject, String filename, String textarea, int hit,
			String regdate) {
		super();
		this.no = no;
		this.name = name;
		this.pw = pw;
		this.subject = subject;
		this.filename = filename;
		this.textarea = textarea;
		this.hit = hit;
		this.regdate = regdate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getTextarea() {
		return textarea;
	}
	public void setTextarea(String textarea) {
		this.textarea = textarea;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Bboard [no=" + no + ", name=" + name + ", pw=" + pw + ", subject=" + subject + ", filename=" + filename
				+ ", textarea=" + textarea + ", hit=" + hit + ", regdate=" + regdate + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
