package sub3;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;

@WebListener
public class MySessionListener implements HttpSessionAttributeListener {
	// 로그인 사용자 수를 집계하는 변수
	private int count = 0;
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		// 세션에 추가 될때 실행		
		System.out.println("attributeAdded...");
		
		count++;
		System.out.println("현재 로그인 사용자 수 : " + count);
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		// 세션에 제거 될때 실행		
		System.out.println("attributeRemoved...");
		
		count--;
		System.out.println("현재 로그인 사용자 수 : " + count);
	}
	
	
	

}