<%@ page import="sub1.Account"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>지시자</title>
			<%--
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 지시자 실습
			
			지시자(Directive)
			- JSP 페이지에 추가적인 정보를 설정하는 스크립트 문법
			- 스크립트릿, 표현식과 함께 JSP 기본 구성요소
			- page, inclue, taglib 지시자 등
		 --%>
		 
	</head>
	
	<body>
		<h3>지시자(Directive)</h3>
	
		<h4>page 지시자</h4>
		<%
			Account kb = new Account("국민은행","101-121-0001","홍길동",0);
			kb.deposit(40000);
			kb.withdraw(25000);
			
			try {
			kb.show(out);
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		%>
		
		<h4>include 지시자</h4>
		<%@ include file="./inc/_header.jsp" %>
		<%@ include file="./inc/_footer.jsp" %>
	
	</body>
	</html>