<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//전송 데이터 수신
	String user_id = request.getParameter("user_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String age = request.getParameter("age");

	//데이터베이스 INSERT
	String host= "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "airforceleather";
	String pass = "1234";
	
	try{
		//드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//데이터베이스 접속
		Connection conn = DriverManager.getConnection(host, user, pass);
		
		//SQL 실행 객체 생성
		String sql = "INSERT INTO USER1 VALUES (?,?,?,?)";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, user_id);
		psmt.setString(2, name);
		psmt.setString(3, hp);
		psmt.setString(4, age);

		//SQL 실행
		psmt.executeUpdate();
		
		//데이터베이스 종료
		psmt.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}

	//목록 이동
	response.sendRedirect("../list.jsp");


%>