<%@page import="vo.UserVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	//로그아웃 처리 : 현재 세션 sessUser값 제거 및 session 무효화 
	session.removeAttribute("sessUser");
	session.invalidate();
	
	//자동 로그인 쿠키 해제(삭제)
	Cookie autoCookie = new Cookie("auto", null);
	autoCookie.setMaxAge(0);  //쿠키 수명을 0으로 해서 쿠키 삭제
	autoCookie.setPath("/");
	
	response.addCookie(autoCookie);
	
	//페이지 이동
	response.sendRedirect("../session.jsp");
%>