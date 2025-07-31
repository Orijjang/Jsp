<%@page import="ch06.FileDTO"%>
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

	// 다운로드 파일 정보 객체
	FileDTO fileDTO = null;

	// 파일 정보 조회
	try{
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/airforleather");	
		Connection conn = ds.getConnection();
		
		String sql = "SELECT * FROM FILES WHERE no=?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		psmt.setString(1, no);
		
		ResultSet rs = psmt.executeQuery();
		
		if(rs.next()){
			fileDTO = new FileDTO();
			fileDTO.setNo(rs.getInt(1));
			fileDTO.setTitle(rs.getString(2));
			fileDTO.setName(rs.getString(3));
			fileDTO.setoName(rs.getString(4));
			fileDTO.setsName(rs.getString(5));
			fileDTO.setRdate(rs.getString(6));			
		}
	
		rs.close();
		psmt.close();
		conn.close();		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	// response 헤더 정보 수정
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment; filename="+URLEncoder.encode(fileDTO.getoName(), "UTF-8"));
	response.setHeader("Content-Transfer-Encoding", "binary");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "private");
	

	// 파일 스트림 작업(파일 내보내기)
	String path = application.getRealPath("/files");
	
	File savedFile = new File(path + File.separator + fileDTO.getsName());
	
	BufferedInputStream bis = new BufferedInputStream(new FileInputStream(savedFile));
	BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream()); // response 스트림으로 출력
	
	// 스트림 전송(파일 전송)
	bis.transferTo(bos);
	
	// 버퍼 비우기
	bos.flush();
	
	// 스트림 종료
	bos.close();
	bis.close();	
%>