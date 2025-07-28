package sub1;

import java.io.IOException;

import jakarta.servlet.jsp.JspWriter;

public class Account {
	private String bank;
	private String id;
	private String name;
	private int balance;
	
	public Account(String bank, String id, String name, int balance) {
		this.bank = bank;
		this.id = id;
		this.name = name;
		this.balance = balance;
	}
	
	public void deposit(int money) {
		this.balance += money;
	}
	public void withdraw(int money) {
		this.balance = money;
	}
	public void show(JspWriter writer) throws IOException {
		writer.println("<p>");
		writer.println("은행명 : " + this.bank + "<br/>");
		writer.println("계좌번호 : " + this.id + "<br/>");
		writer.println("입금주: " + this.name+ "<br/>");
		writer.println("잔액 : " + this.balance);
		writer.println("</p>");
	}
}
