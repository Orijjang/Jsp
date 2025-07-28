<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	String queryString = request.getQueryString();
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
%>

<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결과 페이지1</title>
	</head>
	<body>
		<h3>요청결과(전송 데이터 수신)</h3>
		
		<p>
			쿼리스트링 : <%= queryString %> <br/>
			아이디 	: <%= uid %><br/>
			이름 	: <%= name %><br/>
			생년월일 	: <%= birth %><br/>
		</p>
		
		<a href="../1_request.jsp">뒤로가기</a>
		
	</body>
</html>