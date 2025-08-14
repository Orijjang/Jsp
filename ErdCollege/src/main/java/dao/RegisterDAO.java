package dao;

import java.util.List;

import dto.LectureDTO;
import dto.RegisterDTO;
import util.DBHelper;

public class RegisterDAO extends DBHelper {
	
	private static final RegisterDAO INSTANCE = new RegisterDAO();
	public static RegisterDAO getInstance() {
		return INSTANCE;
	}
	private RegisterDAO() {}
	
	// 기본 CRUD
	public RegisterDTO select(int regStdNo, int regLecNo) {
		return null;
	}
	public List<RegisterDTO> selectAll() {
		return null;
	}
	public void insert(RegisterDTO dto) {
		
		try {
			conn = getConnection();
			
			String sql = "INSERT INTO REGISTER (REGSTDNO, REGLECNO) VALUES (?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString
		}
		
	}
	public void update(RegisterDTO dto) {}
	public void delete(int regStdNo, int regLecNo) {}
}