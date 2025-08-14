package controller.student;

import java.io.IOException;

import dto.StudentDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.StudentService;

@WebServlet("/student/logout.do")
public class LogoutController extends HttpServlet {

	private static final long serialVersionUID = 1L;
		
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 로그아웃 처리
		HttpSession session = req.getSession();
		session.removeAttribute("sessStudent");
		session.invalidate();
		
		// 메인 이동
		resp.sendRedirect("/ErdCollege/?logout=success");
		
	}	
}