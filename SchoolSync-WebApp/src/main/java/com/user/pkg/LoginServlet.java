package com.user.pkg;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    PrintWriter out = response.getWriter();
	    response.setContentType("text/html");

	    String userName = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    User authenticatedUser = UserDBUtil.validate(userName, password);

	    if (authenticatedUser != null) {
	        // Store the user's role in the session
	        String role = authenticatedUser.getRole();
	        HttpSession session = request.getSession();
	        session.setAttribute("user", authenticatedUser);
	        
	        // Redirect based on the user's role
	        if ("Teacher".equals(role)) {
	            response.sendRedirect("home.jsp");
	        } else if ("Student".equals(role)) {
	            response.sendRedirect("studentDashboard.jsp");
	        } else {
	            out.println("<script type='text/javascript'>");
	            out.println("alert('Invalid role');");
	            out.println("location='login.jsp'");
	            out.println("</script>");
	        }
	    } else {
	        out.println("<script type='text/javascript'>");
	        out.println("alert('Your username or password is incorrect');");
	        out.println("location='login.jsp'");
	        out.println("</script>");
	    }
	}


}
