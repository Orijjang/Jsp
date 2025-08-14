package service;

import java.util.List;

import dao.AccountDAO;
import dto.AccountDTO;

public enum AccountService {
	
	INSTANCE;
	
	private AccountDAO dao = AccountDAO.getInstance();
	
	public void register(AccountDTO dto) {
		dao.insert(dto);
	}
	public AccountDTO findById(String a_no) {
		return dao.select(a_no);
	}
	public List<AccountDTO> findAll() {
		return dao.selectAll();
	}
	public void modify(AccountDTO dto) {
		dao.update(dto);
	}
	public void remove(String a_no) {
		dao.delete(a_no);
	}

}