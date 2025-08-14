package controller.account;

import java.io.IOException;
import java.util.List;

import dto.AccountDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.AccountService;

@WebServlet("/account/list.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private AccountService service = AccountService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<AccountDTO> dtoList = service.findAll();
		
		System.out.println(dtoList);
		
		req.setAttribute("accounts", dtoList);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/account/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}