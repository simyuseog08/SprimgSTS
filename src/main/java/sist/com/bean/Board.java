package sist.com.bean;

public class Board {
	private int rm;	
	private int    no;
	private String title;
	private String writer;
	private String password;
	private String contents;
	private String regdate;
	private int     hit;
	private String  fileName;
	private int    ref;
	private int   step;
	private int   lev;
	private int   pnum;
	private int   reply;	
	private String job;
	
	
	
	
	public Board() {
		super();
	}
	public Board(int pnum, String job) {
		super();
		this.pnum = pnum;
		this.job = job;
	}
	
	public Board(int ref, int step, String job) {
		super();
		this.ref = ref;
		this.step = step;
		this.job = job;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getRm() {
		return rm;
	}
	public void setRm(int rm) {
		this.rm = rm;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getLev() {
		return lev;
	}
	public void setLev(int lev) {
		this.lev = lev;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public int getReply() {
		return reply;
	}
	public void setReply(int reply) {
		this.reply = reply;
	}
	@Override
	public String toString() {
		return "Board [no=" + no + ", title=" + title + ", writer=" + writer + ", password=" + password + ", contents="
				+ contents + ", regdate=" + regdate + ", hit=" + hit + ", fileName=" + fileName + ", ref=" + ref
				+ ", step=" + step + ", lev=" + lev + ", pnum=" + pnum + ", reply=" + reply + "]";
	}
	
	
	
	
	
	
	
	
	
	

}


