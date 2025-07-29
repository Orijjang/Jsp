<%@page import="vo.User2VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%


	String host= "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "airforceleather";
	String pass = "1234";
	
	List<User2VO> users = new ArrayList<>();

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT * FROM USER4";
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			
			User2VO vo = new User2VO();
			vo.setName(rs.getString(1));
			vo.setGender(rs.getString(2));
			vo.setAge(rs.getInt(3));
			vo.setAddress(rs.getString(4));
			
						
			users.add(vo);
		}
		
		rs.close();
		stmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user4::list</title>
	</head>
	<body>
		<h3>User4 목록</h3>
		
		<a href="../jdbc.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr>
				<th>이름</th>
				<th>성별</th>
				<th>나이</th>
				<th>주소</th>
				<th>관리</th>
			</tr>
			
			<% for(User2VO user2VO : users){ %>
			<tr>
				<td><%= user2VO.getName() %></td>
				<td><%= user2VO.getGender() %></td>
				<td><%= user2VO.getAge() %></td>
				<td><%= user2VO.getAddress() %></td>
				<td>
					<!-- 수정 하고자 하는 사용자 아이디를 modify.jsp로 전송 -->
					<a href="./modify.jsp?user_id=<%= user2VO.getName() %>">수정</a>
					<a href="./delete.jsp?user_id=<%= user2VO.getName() %>">삭제</a>
				</td>
			</tr>
			<% } %>
		</table>		
	</body>
</html>