<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	//프로젝트 컨텍스트 경로 구하기
	String path = application.getContextPath();
	
	//아이디가 abc123이고 비밀번호가 1234일 때
	if(id.equals("abc123") && pw.equals("1234")) {
		//회원이 맞을 경우 쿠키 생성
		Cookie cookie = new Cookie("username",id); //키-값 쿠키 생성
		cookie.setMaxAge(60*3); //쿠키 수명 3분
		cookie.setPath(path); //쿠키 유효 범위
		
		Cookie cookie2 = new Cookie("userpass", pw);
		cookie2.setMaxAge(60*1);
		cookie2.setPath(path);
		
		//응답 객체로 클라이언트 쿠키 전송
		response.addCookie(cookie);
		response.addCookie(cookie2);
		
		//리다이렉트(페이지 이동)
		response.sendRedirect("./resultCookie.jsp");
		
	}else {
		//회원이 아닐 경우
		
		response.sendRedirect("../cookie.jsp");
	}




%>