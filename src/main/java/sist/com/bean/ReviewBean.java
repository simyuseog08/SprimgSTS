package sist.com.bean;

public class ReviewBean {
	private int rNo;
	private String id;
	private String fileName;
	private String contents;
	private String regdate;
	private int pkno;
	private int ref;
	private int pnum;
	private String job;
	
	
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
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
	public int getPkno() {
		return pkno;
	}
	public void setPkno(int pkno) {
		this.pkno = pkno;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	@Override
	public String toString() {
		return "ReviewBean [rNo=" + rNo + ", id=" + id + ", fileName=" + fileName + ", contents=" + contents
				+ ", regdate=" + regdate + ", pkno=" + pkno + ", ref=" + ref + ", pnum=" + pnum + ", job=" + job + "]";
	}
	
	
	
	

}
