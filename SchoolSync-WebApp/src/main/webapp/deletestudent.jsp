<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String role= request.getParameter("role");
		String std_id= request.getParameter("std_id");
		String address= request.getParameter("address");
		
		

	%>

	<h1>Student Account Delete</h1>

	<form action="deletestu" method="post">
	<input type="hidden" id="id" name="id" value="<%=id%>" readonly/>
        <label for="name">Full Name:</label>
        <input type="text" name="name" value="<%=name%>" readonly><br><br>
        
        <label for="email">Email:</label>
        <input type="email" name="email" value="<%=email%>" readonly><br><br>
        
        <label for="phone">Phone Number:</label>
        <input type="text" name="phone" value="<%=phone%>" readonly><br><br>
        
        <label for="username">Username:</label>
        <input type="text" name="username" value="<%=username%>" readonly><br><br>
        
        <label for="password">Password:</label>
        <input type="password" name="password" value="<%=password%>" readonly><br><br>
        
        <input type="hidden" name="role" value="student" readonly>
        
        <label for="std_id">Student ID:</label>
        <input type="text" name="std_id" value="<%=std_id%>" readonly><br><br>

        <label for="address">Address:</label>
        <input type="text" name="address" value="<%=address%>" readonly><br><br>
        
	<input type="submit" name="cancel" value="Remove Student">
	</form>
  
</body>
</html>
