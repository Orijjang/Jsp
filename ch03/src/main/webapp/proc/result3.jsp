<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String address = request.getParameter("address");
	
	//같은 이름의 파라미터값을 배열로 수신
	String[] hobbies = request.getParameterValues("hobby");
%>

<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결과 페이지3</title>
	</head>
	<body>
		<h3>요청결과(전송 데이터 수신)</h3>
		
		<p>
			아이디 	: <%= id %><br/>
			비밀번호 	: <%= pw %><br/>
			이름 	: <%= name %><br/>
			생년월일 	: <%= birth %><br/>
			성별		: <%= gender.equals("M") ? "남자" : "여자" %><br/>
			주소		: <%= address %><br/>
			취미		: 
			<% 
				for(String hobby : hobbies) {
					out.println(hobby + ", ");
				}
			%>
		</p>
		
		<a href="../1_request.jsp">뒤로가기</a>
		
	</body>
</html>