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

@WebServlet("/customer/logout.do")
public class LogoutController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession sess = req.getSession();
		sess.removeAttribute("sessCustomer");
		sess.invalidate();
		
		resp.sendRedirect("/ErdBank/?logout=success");
	}
}