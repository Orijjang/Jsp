<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>1.스크립트 요소</title>
		<!-- 
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : 스크립트 요소 기본
			
			스크립트릿(Scriptlet)
			- 정적문서(HTML)에 프로그래밍 코드를 작성하기 위한 코드영역
			- 동적문서(JSP) 스크립트릿 실행으로 정적문서 변환
			
			표현식(Expression)
			- 자바 변수 겂을 간단하게 출력하기 위한 스크립트 요소
			- 간단한 값, 메서드 호풀 결과 출력
		 -->
	</head>
	<body>
		<h3>1.스크립트 요소</h3>
		
		
		<h4>스크립트릿(Scriptlet)</h4>
		<%
			//스크립트릿(자바 프로그래밍 스코프)
			int 	var1 = 1;
			boolean var2 = true;
			double 	var3 = 3.14;
			String 	var4 = "Hello";
			
			//브라우저 출력
			out.println("<p>var1 : " + var1 + "</p>");
			out.println("<p>var2 : " + var2 + "</p>");
		%>	
		
		<h4>표현식(Expression)</h4>
		<p>var3 : <%= var3 %></p>
		<p>var3 : <%= var4 %></p>
	
	</body>
	</html>