<%@page import="java.net.URLEncoder"%>
<%@page import="java.awt.image.DataBufferDouble"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 파일 번호 수신
	String no = request.getParameter("no");

	// 삭제할 파일명
	String savedName = null;
	
	// 데이터베이스 파일 정보 삭제
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/airforceleather");	
		Connection conn = ds.getConnection();
		
				
		String sql = "SELECT SNAME FROM FILES WHERE no=?";
		PreparedStatement psmtSelect = conn.prepareStatement(sql);
		psmtSelect.setString(1, no);
		
		ResultSet rs = psmtSelect.executeQuery();
		
		if(rs.next()){
			savedName = rs.getString(1);
		}
		
		String deleteSql = "DELETE FROM FILES WHERE no=?";
		PreparedStatement psmtDelete = conn.prepareStatement(deleteSql);
		psmtDelete.setString(1, no);
		
		psmtDelete.executeUpdate();
		
		rs.close();
		psmtDelete.close();
		psmtSelect.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// 저장된 파일 삭제
	String path = application.getRealPath("/files");
	
	File savedFile = new File(path + File.separator + savedName);
	
	savedFile.delete();
	
	// 목록 이동
	response.sendRedirect("/ch06/fileDownload.jsp");	
%>