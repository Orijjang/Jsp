<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>조건문</title>
		<%--
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 스크립트릿 조건문 실습
		
		 --%>
	</head>
	<body>
	
		<h3>조건문</h3>
		<h4>if</h4>
		<%
			int num1 = 1;
			int num2 = 2;
			int num3 = 3;
			int num4 = 4;
			
			if(num1 > 0) {
				out.println("<p>num1은 0보다 크다.</p>");
			}
		%>
		<h4>if~else</h4>
		<%
			if(num1 > num2){
		%>
			<p>num1은 num2보다 크다.</p>
		<% 
			}else{
		%>
		 	<p>num1은 num2보다 작다.</p>
		<%
			}
		%>	
		
		<h4>if~else if~else</h4>
		<% if(num1 > num2) { %>
			<p>num1은 num2 보다 크다.</p>
		<% }else if(num2 > num3) { %>
			<p>num2은 num3 보다 크다.</p>
		<% }else if(num3 > num4) { %>
			<p>num3은 num4보다 크다.</p>
		<% }else  { %>
			<p>num4가 제일 크다.</p>
		<% } %>
	</body>
	</html>