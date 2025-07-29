<%@page import="vo.UserVO"%>
<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//자동 로그인 여부 확인
	Cookie[] cookies = request.getCookies();	
	
if(cookies != null) {
	for(Cookie cookie : cookies) {
		
		if(cookie.getName().equals("auto")) {
			
			String id = cookie.getValue();
			
			//사용자 객체 생성
			UserVO vo = new UserVO();
			vo.setId(id);
			
			//세션 처리
			session.setAttribute("sessUser", vo);
			
			//로그인 성공 페이지 이동
			response.sendRedirect("./proc/sessionSuccess.jsp");
			return; //처리종료
		}
	}
}
%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session</title>
		<%--
			날짜 : 2025/07/29	
			이름 : 김대현
			내용 : JSP 세션 실습하기
		 --%>
	</head>
	<body>
		<h3>session 실습</h3>
		
		<h4>session ID 확인</h4>
		<p>
			session : <%=session.getId() %><br/>
			request session : <%= request.getSession().getId() %><br/>
		</p>
		
		<h4>session 로그인</h4>
		<form action="./proc/sessionLogin.jsp" method="post">
			<input type = "text" name="id" placeholder="아이디 입력"/><br/>
			<input type = "password" name="pw" placeholder="비밀번호 입력"/><br/>
			<label><input type = "checkbox" name="auto" value = "true" />자동로그인</label>
			<input type = "submit" value="로그인"/><br/>
		</form>
	</body>
</html>