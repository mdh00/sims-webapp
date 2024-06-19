package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletestudentServlet")
public class deletestudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String id = request.getParameter("stuid");
		boolean isTrue;
		
		isTrue = addstudentDButil.deletestudent(id);
		
		if (isTrue == true) {
			
			List<Student> std = StudentDBUtil.getStudentDetails();
			request.setAttribute("std", std);
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Student> studetails = addstudentDButil.getstudentdetails();
			request.setAttribute("studetails", studetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}
