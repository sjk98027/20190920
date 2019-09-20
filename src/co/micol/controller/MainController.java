package co.micol.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.micol.command.*;


/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String,Command> map = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		map = new HashMap<String, Command>();
		map.put("/index.do", new IndexCommand());
		map.put("/login.do", new LoginFormCommand());
		map.put("/loginCheck.do", new LoginCheckCommand());
		map.put("/insertMember.do", new InsertMemberForm());
		map.put("/join.do", new InsertMemberCommand());
		map.put("/idCheck.do", new IdCheckCommand());
		map.put("/logout.do",new LogoutCommand());
		map.put("",new LoadMyBookCommand());
		
		
//		map.put("/borderList.do",new BorderListCommand());
//		map.put("/borderWrite.do",new BorderWriteCommand());
//		map.put("/borderWriterForm.do",new BorderWriteForm());
//		map.put("/borderRead.do",new BorderReadCommand());
//		map.put("/borderUpdateForm.do",new BorderUpdateForm());
//		map.put("/borderUpdate.do",new BorderUpdateCommand());
//		map.put("/borderDelete.do", new BorderDeleteCommand());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//주어진 요청을 확인해서 실행하는 부분
		request.setCharacterEncoding("utf-8");
		String url = request.getRequestURI();
		String context = request.getContextPath();
		String path = url.substring(context.length());
		
		Command comm = map.get(path);
		comm.execute(request, response);
		
		
		
	}

}
