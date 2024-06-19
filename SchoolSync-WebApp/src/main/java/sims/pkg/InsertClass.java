package sims.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertClass")
public class InsertClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String grade = request.getParameter("grade");
		String clz = request.getParameter("class");
		String subject = request.getParameter("subject");
		String lesson = request.getParameter("lesson");
		String date = request.getParameter("date");
		String start_time = request.getParameter("start-time");
		String end_time = request.getParameter("end-time");
		String venue = request.getParameter("venue");

		boolean isTrue;

		isTrue = ClassDBUtil.insertclass(grade, clz, subject, lesson, date, start_time, end_time, venue);

		if (isTrue == true) {
			List<Clazz> Clazz = ClassDBUtil.getClassData();
			request.setAttribute("Clazz", Clazz);
			RequestDispatcher dis = request.getRequestDispatcher("ClassDisplay.jsp");
			dis.forward(request, response);

		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}

	}

}
