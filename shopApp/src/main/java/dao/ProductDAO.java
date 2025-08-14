package dao;

import java.util.ArrayList;
import java.util.List;

import dto.CustomerDTO;
import dto.ProductDTO;
import util.DBHelper;

public class ProductDAO extends DBHelper {
	
	private static final ProductDAO INSTANCE = new ProductDAO();
	public static ProductDAO getInstance() {
		return INSTANCE;
	}
	private ProductDAO() {}
	
	// 기본 CRUD 메서드
	public void insertProduct(ProductDTO dto) {
		
	}
	public ProductDTO selectProduct(int prodNo) {
		return null;
	}
	public List<ProductDTO> selectAllProduct() {
		
		List<ProductDTO> dtoList = new ArrayList<ProductDTO>();
		
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM PRODUCT");
			
			while(rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProdNo(rs.getInt(1));
				dto.setProdName(rs.getString(2));
				dto.setStock(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setCompany(rs.getString(5));				 
				dtoList.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return dtoList;
	}		
	public void updateProduct(ProductDTO dto) {
		
	}
	
	
	public void deleteProduct() {}

}