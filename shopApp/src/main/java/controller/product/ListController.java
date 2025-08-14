package controller.product;

import java.io.IOException;
import java.util.List;

import dto.CustomerDTO;
import dto.ProductDTO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.ProductService;

@WebServlet("/product/list.do")
public class ListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private ProductService service = ProductService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 세션 사용자 정보 가져오기(로그인을 안했으면 null)
		HttpSession session = req.getSession();		
		CustomerDTO sessUser = (CustomerDTO) session.getAttribute("sessUser");
		
		// 상품목록 서비스 요청
		List<ProductDTO> dtoList = service.findAll();		
		
		// request 공유(뷰(JSP)에서 참조)
		req.setAttribute("sessUser", sessUser);
		req.setAttribute("dtoList", dtoList);
				
		// 뷰 포워드
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/product/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
	
	
}