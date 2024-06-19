package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addstudentservlet")
public class addstudentservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Name = request.getParameter("name");
        String Email = request.getParameter("email");
        String Phone = request.getParameter("phone");
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        String Role = request.getParameter("role"); // Role should be "student"
        String StudentID = request.getParameter("std_id");
        String Address = request.getParameter("address");

        boolean isTrue;

        // Replace with your logic to insert the student data
        // isTrue = addstudentDButil.Insertstudent(Name, Email, Phone, Username, Password, Role, StudentID, Address);
        // Example:
        isTrue = StudentDBUtil.insertStudent(Name, Email, Phone, Username, Password, Role, StudentID, Address);
        System.out.println(isTrue);

        if (isTrue) {
        	List <Student> std = StudentDBUtil.getStudentDetails();
        	request.setAttribute("std", std);
        	System.out.println(isTrue);
        	RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
        	
        } else {
            response.sendRedirect("submitUnsuccess.jsp");
            System.out.println(isTrue);
        }
    }
}
