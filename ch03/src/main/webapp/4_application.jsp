<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>JSP 내장객체 - application</title>
			<!-- 
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 내장객체 - application 실습하기
			
			application 내장객체
			- 현재 실행중인 애플리케이션 환경 객체
			- 애플리케이션 환경정보(Context)을 설정하고 참조
		 -->
		</head>
		<body>

			<h3>JSP 내장객체 - application</h3>
			
			<h4>서버정보</h4>
			<p>
			
				WAS 버전 : <%= application.getServerInfo() %><br/>
				Servlet 버전 : <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %><br/>
				JSP 버전 : <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
				
			</p>

			<h4>환경정보</h4>
			<%
				String p1 = application.getInitParameter("param1");
				String p2 = application.getInitParameter("param2");
			%>
			<p>
				param1 : <%= p1 %><br/>
				param2 : <%= p2 %><br/>
			</p>

			<h4>자원정보</h4>
			<p>
				현재 파일(4_application.jsp) 전체 시스템 경로<br/>
				<%= application.getRealPath("./4_application.jsp") %>
			</p>
			

			<h4>로그정보</h4>
			<%
				application.log("로그 - 메시지1");
				application.log("로그 - 메시지2");
			%>


		</body>
	</html>