package sub2;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;

// 필터 등록 어노테이션
@WebFilter(urlPatterns = {"/welcome.do", "/greeting.do"})
public class FilterC implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// 필터링 수행
		System.out.println("FilterC doFilter...");
		
		// 다음 필터 이동(최종 필터는 서블릿)
		chain.doFilter(req, resp);
	}
}