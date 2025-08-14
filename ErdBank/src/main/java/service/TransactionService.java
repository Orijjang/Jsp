package service;

import java.util.List;

import dao.TransactionDAO;
import dto.TransactionDTO;

public enum TransactionService {
	
	INSTANCE;
	
	private TransactionDAO dao = TransactionDAO.getInstance();
	
	
	public void transfer(TransactionDTO dto) {
		dao.insertAndUpdate(dto);
	}
	public TransactionDTO findById(int t_no) {
		return dao.select(t_no);
	}
	public List<TransactionDTO> findAll() {
		return dao.selectAll();
	}
	public void modify(TransactionDTO dto) {
		dao.update(dto);
	}
	public void remove(int t_no) {
		dao.delete(t_no);
	}

}