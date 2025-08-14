package dao;

import java.util.List;

import dto.CustomerDTO;
import util.DBHelper;

public class CustomerDAO extends DBHelper {
	
	private static final CustomerDAO INSTANCE = new CustomerDAO();
	public static CustomerDAO getInstance() {
		return INSTANCE;
	}
	private CustomerDAO() {}
	
	// 기본 CRUD 메서드
	public void insertCustomer(CustomerDTO dto) {
		try {
			conn = getConnection();			
			String sql = "INSERT INTO CUSTOMER VALUES (?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCustid());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getRdate());			
			psmt.executeUpdate();
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public CustomerDTO selectCustomer(String custId) {
		
		CustomerDTO dto = null;
		
		try {
			conn = getConnection();
			psmt = conn.prepareStatement("select * from CUSTOMER where custId=?");
			psmt.setString(1, custId);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new CustomerDTO();
				dto.setCustid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAddr(rs.getString(4));
				dto.setRdate(rs.getString(5));
			}
			closeAll();			
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return dto;
	}
	
	public List<CustomerDTO> selectAllCustomer() {
		return null;
	}
	public void updateCustomer(CustomerDTO dto) {}
	public void deleteCustomer(String custId) {}

}