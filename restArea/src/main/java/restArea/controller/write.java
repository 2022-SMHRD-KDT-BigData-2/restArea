package restArea.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import restArea.model.writeDAO;
import restArea.model.writeVO;

// �� �ۼ� + 2�� �� ���� �޽���

@WebServlet("/write")
public class write extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("EUC-KR");
		
		String title = request.getParameter("title");
		String wcontent = request.getParameter("wcontent");
		
		
		writeVO wvo = new writeVO(title, wcontent);
		
		writeDAO dao = new writeDAO();
		
		int cnt = dao.write(wvo);
		
		if(cnt > 0) {
			System.out.println("����");
		}else {
			System.out.println("����");
		}
		response.sendRedirect("Main.jsp");
		
		
	}
}
