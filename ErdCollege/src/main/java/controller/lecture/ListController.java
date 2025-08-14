package controller.lecture;

import java.io.IOException;
import java.util.List;

import dto.LectureDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.LectureService;

@WebServlet("/lecture/list.do")
public class ListController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private LectureService service = LectureService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<LectureDTO> dtoList = service.findAll();
		
		req.setAttribute("dtoList", dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/lecture/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
}