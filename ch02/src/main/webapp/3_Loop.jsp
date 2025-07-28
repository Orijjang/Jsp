<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>반복문</title>
			<%--
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 스크립트릿 조건문 실습
		 --%>
		 
	</head>
	<body>
		<h3>반복문</h3>
		
		<h4>for</h4>
		<%	
			for(int i =1 ; i<=5 ; i++) {
			out.println("<p>i : " + i + "</p>");
			}
		%>
		
		<% for (int j=1 ; j<=5 ; j++) { %>
			<p> j : <%= j %></p>
		<% } %>
		
		<h4>while</h4>
		<%
			int k =1;
			while(k <= 10) {
		%>
			<p> k : <%= k %> </p>
		<%
				k++;
			}
		%>
		<h4>구구단</h4>
	
		<table border = "1">
			<% for(int x =1; x <=9 ; x++) { %>
			<tr>
				<% for(int y =2 ; y <=9 ; y++) { %>
				<td> <%= y %> x <%= x %> = <%= y * x  %></td>
				<% } %>
			</tr>
			<% } %>
			
			</table>
			
			
	</body>
	</html>