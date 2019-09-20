package co.micol.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.dao.BorderDao;
import co.micol.dto.BorderDto;

public class LoadMyBookCommand implements Command{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<BorderDto> list = new ArrayList<BorderDto>();
		BorderDao dao = new BorderDao();
		list = dao.select();
		request.setAttribute("list", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/loadMyBook.jsp");
		dispatcher.forward(request, response);
		
	}

}
