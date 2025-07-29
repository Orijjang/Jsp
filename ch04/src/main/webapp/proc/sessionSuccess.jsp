<%@page import="vo.UserVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//현재 세션(클라이언트) 사용자 객체 가져오기
	UserVO sessUser = (UserVO) session.getAttribute("sessUser");

	//로그인 하지 않고 접근하면
	if(sessUser == null) {
		response.sendRedirect("../session.jsp");
		
		return; //처리 종료
	}
	
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>resultSuccess</title>
	</head>
	<body>

		<h3>세션 로그인 성공</h3>
		<p>
			<%= session.getId() %><br/>
			<%= sessUser.getId() %>님 반갑습니다.<br/>
			<a href="./sessionLogout.jsp">로그아웃</a>			
		</p>
				
	</body>
</html>