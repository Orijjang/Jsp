<%@page import="vo.UserVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	//전송 데이터 수신
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String auto = request.getParameter("auto");
	
	System.out.println("id : " + id);
	System.out.println("pw : " + pw);
	System.out.println("auto : " + auto);

	//데이터 베이스 사용자 조회 후 사용자 객체 생성
	UserVO vo = null;
	
	if(id.equals("abc123") && pw.equals("1234")) {
		vo = new UserVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName("김유신");
		vo.setAge(23);
	}
	
	if(vo != null) {
		
		//자동로그인 처리
		if(auto != null) {
			
			//사용자 아이디로 auto 쿠키 생성
			Cookie autoCookie = new Cookie("auto", "id"); 
			autoCookie.setMaxAge(60*60*24*7); //7일
			autoCookie.setPath("/"); //모든 경로에서 쿠키 유효()			
			response.addCookie(autoCookie);
		}
		
		//사용자가 회원이면 세션에 사용자 객체 저장	
		session.setAttribute("sessUser", vo);
		
		//리다이렉트(페이지 이동)
		response.sendRedirect("./sessionSuccess.jsp");
	
	}else {
		//사용자가 회원이 아니면 다시 로그인 화면 이동
		response.sendRedirect("../session.jsp");	
	}

%>