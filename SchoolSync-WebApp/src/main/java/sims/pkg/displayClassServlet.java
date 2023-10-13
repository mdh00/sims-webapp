package sims.pkg;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class displayClassServlet
 */
@WebServlet("/displayClassServlet")
public class displayClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 List<Clazz> Clazz = ClassDBUtil.getClassData(); // Retrieve data
	    request.setAttribute("classDataList", Clazz); // Store data in request attribute
	    
	    // Forward to your JSP to display the data
	    RequestDispatcher dispatcher = request.getRequestDispatcher("ClassDisplay.jsp");
	    dispatcher.forward(request, response);
		
		
	}

}

