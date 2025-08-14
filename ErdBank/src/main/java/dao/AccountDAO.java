package dao;

import java.util.ArrayList;
import java.util.List;

import dto.AccountDTO;
import util.DBHelper;
import util.Sql;

public class AccountDAO extends DBHelper {

	private static final AccountDAO INSTANCE = new AccountDAO();
	public static AccountDAO getInstance() {
		return INSTANCE;
	}
	private AccountDAO() {}
	
	public void insert(AccountDTO dto) {}
	public AccountDTO select(String a_no) {
		return null;
	}
	
	
	public List<AccountDTO> selectAll() {		
		List<AccountDTO> dtoList = new ArrayList<AccountDTO>();
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(Sql.SELECT_ALL_ACCOUNT_WITH_NAME);
			
			while(rs.next()) {
				AccountDTO dto = new AccountDTO();
				dto.setA_no(rs.getString(1));
				dto.setA_item_dist(rs.getString(2));
				dto.setA_item_name(rs.getString(3));
				dto.setA_c_no(rs.getString(4));
				dto.setA_balance(rs.getInt(5));
				dto.setA_open_date(rs.getString(6));
				dto.setA_c_name(rs.getString(7));
				dtoList.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	
	public void update(AccountDTO dto) {}
	public void delete(String a_no) {}
	
}