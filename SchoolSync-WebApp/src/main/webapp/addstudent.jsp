<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
</head>
<body>
    <h2>Add Student</h2>
    <form action="insertStd" method="post">
    
    	<input type = "hidden" id = "id" name = "id"/>
        <label for="name">Full Name:</label>
        <input type="text" name="name" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" name="email" required><br><br>
        
        <label for="phone">Phone Number:</label>
        <input type="text" name="phone" required><br><br>
        
        <label for="username">Username:</label>
        <input type="text" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>
        
        <input type="hidden" name="role" value="student">
        
        <label for="std_id">Student ID:</label>
        <input type="text" name="std_id" required><br><br>

        <label for="address">Address:</label>
        <input type="text" name="address" required><br><br>
        
        <input type="submit" value="Add Student">
    </form>
</body>
</html>
