package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		session.invalidate(); // session delete
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/logout.jsp");
		dispatcher.forward(request, response);
				
		
	}

}
