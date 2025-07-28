<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>redirect2</title>
	</head>
	<body>
		<h3>redirect2 페이지 </h3>
		<%
			// Naver 페이지로 리다이렉트(다시 요청)
			response.sendRedirect("https://naver.com");
		%>
	
	</body>
</html>