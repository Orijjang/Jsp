
package service;

import java.util.List;

import dao.LectureDAO;
import dao.RegisterDAO;
import dto.LectureDTO;
import dto.RegisterDTO;

public enum RegisterService {
	
	INSTANCE;
	
	private RegisterDAO dao = RegisterDAO.getInstance();	
	
	public RegisterDTO findById(int regStdNo, int regLecNo) {
		return dao.select(regStdNo, regLecNo);
	}
	public List<RegisterDTO> findAll() {
		return dao.selectAll();
	}
	public void regist(RegisterDTO dto) {
		dao.insert(dto);
	}
	public void modify(RegisterDTO dto) {
		dao.update(dto);
	}
	public void remove(int regStdNo, int regLecNo) {
		dao.delete(regStdNo, regLecNo);
	}	
}
