package util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBHelper {
	
	protected Connection conn = null;
	protected PreparedStatement psmt = null;
	protected PreparedStatement psmt1 = null;
	protected PreparedStatement psmt2 = null;
	protected PreparedStatement psmt3 = null;
	protected Statement stmt = null;
	protected ResultSet rs = null;
	
	public Connection getConnection() throws NamingException, SQLException {		
		Context ctx = (Context) new InitialContext().lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("jdbc/bank");		
		return ds.getConnection();		
	}
	
	public void closeAll() throws SQLException {
		
		if(rs != null) {
			rs.close();
		}
		
		if(stmt != null) {
			stmt.close();
		}		
		
		if(psmt != null) {
			psmt.close();
		}
		
		if(psmt1 != null) {
			psmt1.close();
		}
		
		if(psmt2 != null) {
			psmt2.close();
		}
		
		if(psmt3 != null) {
			psmt3.close();
		}
		
		if(conn != null) {
			conn.close();
		}		
	}
	

}