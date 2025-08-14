package service;

import java.util.List;

import dao.CustomerDAO;
import dto.CustomerDTO;

public enum CustomerService {

	INSTANCE;
	
	private CustomerDAO dao = CustomerDAO.getInstance();
		
	// DAO 요청메서드
	public void register(CustomerDTO dto) {
		dao.insertCustomer(dto);
	}
	
	public CustomerDTO findById(String custId) {
		return dao.selectCustomer(custId);
	}
	
	public List<CustomerDTO> findAll() {
		return dao.selectAllCustomer();
	}
	public void modify(CustomerDTO dto) {
		dao.updateCustomer(dto);
	}
	public void delete(String custId) {
		dao.deleteCustomer(custId);
	}
	
	
}