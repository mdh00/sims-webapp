<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
      table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 1px solid black;
		}
	</style>
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
	
	
	<form action="updatestu" method="post" >

    
    	<input type = "hidden" id = "id" name = "id" value="<%=id%>"readonly/>
        <label for="name">Full Name:</label>
        <input type="text" name="name" value="<%=name%>" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" name="email" value="<%=email%>" required><br><br>
        
        <label for="phone">Phone Number:</label>
        <input type="text" name="phone" value="<%=phone%>" required><br><br>
        
        <label for="username">Username:</label>
        <input type="text" name="username" value="<%=username%>" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" name="password" value="<%=password%>"required><br><br>
        
        <input type="hidden" name="role"  value="<%=role%>">
        
        <label for="std_id">Student ID:</label>
        <input type="text" name="std_id" value="<%=std_id%>" required><br><br>

        <label for="address">Address:</label>
        <input type="text" name="address" value="<%=address%>" required><br><br>
        
        
   
	<br>
	<input type="submit" name="submit" value="Update">
	</form>
  
</body>
</html>