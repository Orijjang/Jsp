package service;

import java.util.List;

import dao.LectureDAO;
import dto.LectureDTO;

public enum LectureService {
	
	INSTANCE;
	
	private LectureDAO dao = LectureDAO.getInstance();
	
	public LectureDTO findById(int lecNo) {
		return dao.select(lecNo);
	}
	public List<LectureDTO> findAll() {
		return dao.selectAll();
	}
	public void regist(LectureDTO dto) {
		dao.insert(dto);
	}
	public void modify(LectureDTO dto) {
		dao.update(dto);
	}
	public void remove(int lecNo) {
		dao.delete(lecNo);
	}	
}