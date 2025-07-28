<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP 내장객체 - pageContext</title>
		<!-- 
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 내장객체 pageContext 실습하기
			
			pageContext 내장객체
			- 요청에 대한 대상인 JSP 파일 정보 객체
			- JSP 페이지 당 하나의 pageContext 객체
			- 주요 기능은 페이지 흐름제어(include, forward) 기능 제공
		 -->
		 
	</head>
	<body>
	
		<h3>JSP 내장객체 - pageContext</h3>
		
		<h4>forward</h4>
		<a href="./proc/forward1.jsp">포워드 페이지 요청1</a><br/>	
		<a href="./proc/forward2.jsp">포워드 페이지 요청2</a><br/>	
		
		
		<h4>include</h4>
		<%
			//동적 페이지 삽입
			pageContext.include("./inc/_header.jsp");
			pageContext.include("./inc/_footer.jsp");
		%>
	
		<%-- 정적 페이지 삽입 --%>
		<%@ include file="./inc/_header.jsp"%>
		<%@ include file="./inc/_footer.jsp"%>
	
	</body>
</html>