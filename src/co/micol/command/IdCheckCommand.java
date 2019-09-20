package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.MemberDao;

public class IdCheckCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDao dao = new MemberDao();
		String id = request.getParameter("id");
		String path;
		boolean chk = dao.isIdCheck(id);
		if(chk) {
			path="jsp/idOk.jsp";
		}
		else
		{
			path = "jsp/idNo.jsp";
		}

		RequestDispatcher dispatcher  = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
