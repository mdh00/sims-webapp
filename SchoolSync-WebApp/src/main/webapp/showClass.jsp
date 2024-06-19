<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scheduled Class Details</title>
</head>
<body>
    <h1>Scheduled Class Details</h1>
    
	
    
	<c:forEach var="classData" items="${Clazz}">
    <c:out value="Grade: ${classData.grade}" /><br>
    <c:out value="Class: ${classData.clz}" /><br>
    <c:out value="Subject: ${classData.subject}" /><br>
    <c:out value="Lesson: ${classData.lesson}" /><br>
    <c:out value="Date: ${classData.date}" /><br>
    <c:out value="Start Time: ${classData.start_time}" /><br>
    <c:out value="End Time: ${classData.end_time}" /><br>
    <c:out value="Venue: ${classData.venue}" /><br>
    </c:forEach>

    <!-- Add more fields as needed -->

    <a href="your-schedule-page.jsp">Back to Schedule Page</a>
</body>
</html>
