package service;

import java.util.List;

import dao.CustomerDAO;
import dto.CustomerDTO;

public enum CustomerService {
	
	INSTANCE;
	
	private CustomerDAO dao = CustomerDAO.getInstance();
	
	public void register(CustomerDTO dto) {
		dao.insert(dto);
	}
	public CustomerDTO findById(String c_no) {
		return dao.select(c_no);
	}
	
	public CustomerDTO findByIdAndName(String c_no, String c_name) {
		return dao.select(c_no, c_name);
	}
	public List<CustomerDTO> findAll() {
		return dao.selectAll();
	}
	public void modify(CustomerDTO dto) {
		dao.update(dto);
	}
	public void remove(String c_no) {
		dao.delete(c_no);
	}

}