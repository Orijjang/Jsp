<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- 
			날짜 : 2025/07/28
			이름 : 김대현
			내용 : JSP 내장객체 request 실습하기
			
			Request 내장객체
			- 클라이언트의 요청 정보를 갖는 JSP 내장객체
			- 클라이언트의 전송 데이터를 수신처리하는 기능 제공
			
			GET 요청
			- 기본 데이터 요청 방식, 전송 데이터를 쿼리스트링으로 전송(URL주소에 붙여 전송)
			- 보안에 취약하지만 POST 전송대비 빠른 정송
			 
			POST 요청		
			- 데이터를 요청 객체의 body에 저장해서 전송되는 방식
			- 보안에 유리하고 대량의 데이터 전송에 적합  							
		 -->
		 
	</head>
	<body>
		<h3>JSP 내장객체 - request</h3>	
	
		<h4>GET요청</h4>
		
		<a href="./proc/result1.jsp?uid=a101"> 요청1</a>
		<a href="./proc/result1.jsp?uid=a102&name=홍길동"> 요청2</a>
		<a href="./proc/result1.jsp?uid=a103&name=김유신&age=23"> 요청3</a>
		
		<h4>POST요청</h4>
		<form action="./proc/result2.jsp" method="post">
			<table border = "1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="uid" placeholder="아이디 입력하세요." /></td>
				</tr>
			
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="이름 입력하세요." /></td>
				</tr>
				
				<tr>
					<td> 아이디</td>
					<td><input type="date" name="birth"/></td>
				</tr>
				
				<tr>
					<td colspan="2" align = "right">
					<input type="submit" value="전송하기" />
				</td>
				</tr>
				
			</table>
				
		
		</form>
		
		<h4>확인문제</h4>
		<form action ="./proc/result3.jsp" method="post">
			
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" placeholer="아이디 입력"/></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" placeholer="비밀번호 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholer="이름 입력"/></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth"/></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<label><input type="radio" name="gender" value="M"/>남자</label>
						<label><input type="radio" name="gender" value="F"/>여자</label>
					</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>
						<Select name = "address">
							<option>서울</option>
							<option>대전</option>
							<option>대구</option>
							<option>부산</option>
							<option>광주</option>
						</Select>
					</td>
				</tr>
				<tr>
					<td>취미</td>
					<td>
						<label><input type="checkbox" name="hobby" value="등산"/>등산</label>
						<label><input type="checkbox" name="hobby" value="운동"/>운동</label>
						<label><input type="checkbox" name="hobby" value="여행"/>여행</label>
						<label><input type="checkbox" name="hobby" value="독서"/>독서</label>
						<label><input type="checkbox" name="hobby" value="게임"/>게임</label>
				
				<tr>
					<td colspan = "2" align="right">
						<input type="submit" value="전송하기"/>
					</td>
				</tr>
				
			</table>
		
		</form>	
		
		
		<h4>request 자주 사용하는 클라이언트 정보</h4>
		<p>
			헤더정보 #1 : <%= request.getHeader("User-Agent") %></br>
			헤더정보 #2 : <%= request.getHeader("referer") %></br><!-- 현재 머무르고 있는 페이지 직전의 요청 페이지(이전 페이지) -->
			헤더정보 #3 : <%= request.getHeader("cookie") %></br>
			헤더정보 : <%= request.getProtocol() %></br>
			프로토콜 : <%= request.getServerName() %></br>
			서버이름 : <%= request.getServerPort() %></br>
			요청주소 : <%= request.getRequestURL() %></br>
			요청경로 : <%= request.getRequestURI() %></br>
			IP 주소 : <%= request.getRemoteAddr() %></br>
		</p>
	</body>
</html>