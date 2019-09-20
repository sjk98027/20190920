package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexCommand implements Command {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//이부분에 실행할 명령 및 돌려줄 부분 설정.
		RequestDispatcher dispatcher  = request.getRequestDispatcher("jsp/main.jsp");
		dispatcher.forward(request, response);
		
	}
}
