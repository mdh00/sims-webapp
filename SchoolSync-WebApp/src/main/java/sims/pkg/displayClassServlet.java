package sims.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayClassServlet")
public class displayClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			List<Clazz> Clazz = ClassDBUtil.getClassData();
			request.setAttribute("Clazz", Clazz);
			RequestDispatcher dis = request.getRequestDispatcher("ClassDisplay.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
