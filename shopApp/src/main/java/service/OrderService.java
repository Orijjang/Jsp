package service;

import dao.OrderDAO;
import dto.OrderDTO;

public enum OrderService {

	INSTANCE;
	
	private OrderDAO dao = OrderDAO.getInstance();
		
	// DAO 요청메서드
	public void register(OrderDTO dto) {
		dao.insertOrder(dto);
	}
	
	
}