<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	
	<head>
		<meta charset="UTF-8">
		<title>EL</title>
		
		<%--
			날짜 : 2025/07/31
			이름 : 김대현
			내용 : JSP 표현언어(EL : Expression Language) 실습하기
		 --%>
		 
	</head>
	<body>
		<h3>JSP 표현언어(EL : Expression Language)</h3>	
		
		<%
			//표현언어로 출력할 변수
			int num1 = 1;
			int num2 = 2;
			
			String str1 = "hello";
			String str2 = "welcome";
			String str3 = "";
			String str4 = null;
			
			//표현언어 출력을 위해 JSP 내장객체 스코프 저장
			pageContext.setAttribute("num1", num1);
			request.setAttribute("num2", num2);
			session.setAttribute("str1", str1);
			application.setAttribute("str2", str2);
			
			request.setAttribute("str3", str3);
			request.setAttribute("str4", str4);
			
		%>
		<h4>표현식(Expression)</h4>
		
		<p>
			num1 : <%= num1 %><br/>
			num2 : <%= num2 %><br/>
			str1 : <%= str1 %><br/>
			str2 : <%= str2 %><br/>
		</p>
		<h4>표현언어(EL:Expression Language)</h4>
		<p>
			num1 : ${num1}<br/>
			num2 : ${num2}<br/>
			str1 : ${str1}<br/>
			str2 : ${str2}<br/>
		</p>
		
		<h4>표현언어 내장객체</h4>
		<p>
			num1 : ${pageScope.num1}<br/>
			num2 : ${requestScope.num2}<br/>
			str1 : ${sessionScope.str1}<br/>
			str2 : ${applicationScope.str2}<br/><%--num1은 pageContext의 값 --%>
		</p>
	
		<h4>표현언어 연산자</h4>
		<p>
			num1 + num2 = ${num1 + num2}<br/>
			num1 - num2 = ${num1 - num2}<br/>
			num1 * num2 = ${num1 * num2}<br/>
			num1 / num2 = ${num1 / num2}<br/>
			num1 % num2 = ${num1 % num2}<br/>
			
			num1 > num2 = ${num1 > num2}<br/>
			num1 < num2 = ${num1 < num2}<br/>
			num1 >= num2 = ${num1 >= num2}<br/>
			num1 <= num2 = ${num1 <= num2}<br/>
			num1 == num2 = ${num1 == num2}<br/>
			num1 != num2 = ${num1 != num2}<br/><br/>
			
			num1 gt num2 = ${num1 gt num2}<br/><!-- Greater Than -->
			num1 lt num2 = ${num1 lt num2}<br/><!-- Less Than -->
			num1 ge num2 = ${num1 ge num2}<br/><!-- Greater Than Equal -->
			num1 le num2 = ${num1 le num2}<br/><!-- Less Than Equal -->
			num1 eq num2 = ${num1 eq num2}<br/><!-- Equal -->
			num1 ne num2 = ${num1 ne num2}<br/><br/><!-- Not Equal -->
			
			empty str1 = ${empty str1}<br/>
			empty str2 = ${empty str2}<br/>
			empty str3 = ${empty str3}<br/> <!-- "" : 빈문자열은 true -->
			empty str4 = ${empty str4}<br/><!--  null 값은 true -->
			str1 eq str2 = ${str1 eq str2}<br/>
			str1 eq "hello" = ${str1 eq "hello"}<br/>
		</p>
			
	</body>

</html>