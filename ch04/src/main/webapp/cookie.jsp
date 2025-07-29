<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>cookie</title>
		<%--
			날짜 : 2025/07/29	
			이름 : 김대현
			내용 : JSP 쿠키 실습하기
		 --%>
	</head>
	<body>
		<h3>cookie 실습</h3>
		
		<form action="./proc/createCookie.jsp" method="post">
			<input type = "text" name="id" placeholder="아이디 입력"/><br/>
			<input type = "password" name="pw" placeholder="비밀번호 입력"/><br/>
			<input type = "submit" value="로그인"/><br/>
		</form>

	</body>
</html>