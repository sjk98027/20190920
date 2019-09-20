package co.micol.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.micol.dao.MemberDao;
import co.micol.dto.MemberDto;

public class LoginCheckCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		
		HttpSession session = request.getSession(false);
		
		String path = null;
		dto.setmId(request.getParameter("id"));
		dto.setmPassword(request.getParameter("pw"));

		if (dao.loginCheck(dto).getmGrant()!= null) {
			session.setAttribute("id", dto.getmId());
			session.setAttribute("name", dto.getmName());
			session.setAttribute("grant", dto.getmGrant());
			path = "jsp/loginOk.jsp";

		} else {
			path = "jsp/loginFail.jsp";
		}

		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);

	}

}
