package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFormCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// login form 화면에 표현할수 있도록 정의
		RequestDispatcher dispatcher  = request.getRequestDispatcher("jsp/loginform.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
