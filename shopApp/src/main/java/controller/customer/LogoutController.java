package controller.customer;

import java.io.IOException;

import dto.CustomerDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.CustomerService;

@WebServlet("/customer/list.do")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CustomerService service = CustomerService.INSTANCE;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	//로그아웃 처리
	HttpSession session = req.getSession();
	
	session.removeAttribute("sessUser");
	session.invalidate();
	
	//리다이렉트
	resp.sendRedirect("/shopApp/product/list.do?logout");
		
	
	
}
}