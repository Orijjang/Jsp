package ch06;

public class FileDTO {
	
	private int no;
	private String title;
	private String name;
	private String oName;
	private String sName;
	private String rdate;
	@Override
	public String toString() {
		return "FileDTO [no=" + no + ", title=" + title + ", name=" + name + ", oName=" + oName + ", sName=" + sName
				+ ", rdate=" + rdate + "]";
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getoName() {
		return oName;
	}
	public void setoName(String oName) {
		this.oName = oName;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	
	

}
