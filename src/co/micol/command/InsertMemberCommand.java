package co.micol.command;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.MemberDao;
import co.micol.dto.MemberDto;

public class InsertMemberCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDto dto = new MemberDto();
		MemberDao dao = new MemberDao();
		String path = null;
		
		dto.setmId(request.getParameter("id"));
		dto.setmName(request.getParameter("name"));
		dto.setmPassword(request.getParameter("pw"));
		dto.setmAddress(request.getParameter("addr"));
		
		int n = dao.insertMember(dto);
		
		if(n!=0) {
			path = "jsp/joinOk.jsp";
		}
		else {
			path = "jsp/joinFail.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
	

}
