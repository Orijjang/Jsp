package dto;

public class TransactionDTO {

	private int t_no;
	private String t_a_no; // 내 계좌번호
	private int t_dist;
	private int t_amount;
	private String t_datetime;
	
	// 추가필드
	private String t_a_no_to;
	
	public String getT_a_no_to() {
		return t_a_no_to;
	}
	public void setT_a_no_to(String t_a_no_to) {
		this.t_a_no_to = t_a_no_to;
	}
	
	
	public int getT_no() {
		return t_no;
	}
	public void setT_no(int t_no) {
		this.t_no = t_no;
	}
	public String getT_a_no() {
		return t_a_no;
	}
	public void setT_a_no(String t_a_no) {
		this.t_a_no = t_a_no;
	}
	public int getT_dist() {
		return t_dist;
	}
	public void setT_dist(int t_dist) {
		this.t_dist = t_dist;
	}
	public int getT_amount() {
		return t_amount;
	}
	public void setT_amount(int t_amount) {
		this.t_amount = t_amount;
	}
	public void setT_amount(String t_amount) {
		if(t_amount != null) {
			this.t_amount = Integer.parseInt(t_amount);	
		}		
	}
	public String getT_datetime() {
		return t_datetime;
	}
	public void setT_datetime(String t_datetime) {
		this.t_datetime = t_datetime;
	}
	@Override
	public String toString() {
		return "TransactionDTO [t_no=" + t_no + ", t_a_no=" + t_a_no + ", t_dist=" + t_dist + ", t_amount=" + t_amount
				+ ", t_datetime=" + t_datetime + "]";
	}
	
	
	
}