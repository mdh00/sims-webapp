package sims.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteClassServlet")
public class DeleteClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");

		boolean isTrue;

		isTrue = ClassDBUtil.deleteClass(id);

		if (isTrue == true) {
			List<Clazz> Clazz = ClassDBUtil.getClassData();
			request.setAttribute("Clazz", Clazz);
			RequestDispatcher dis = request.getRequestDispatcher("ClassDisplay.jsp");
			dis.forward(request, response);

		} else {
			List<Clazz> Clazz = ClassDBUtil.getClassData();
			request.setAttribute("Clazz", Clazz);

			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
