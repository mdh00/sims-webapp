<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
    <tr>
        <th>ID</th>
        <th>Grade</th>
        <th>Class</th>
        <th>Subject</th>
        <th>Lesson</th>
        <th>Date</th>
        <th>Start Time</th>
        <th>End Time</th>
        <th>Venue</th>
    </tr>
    
    <c:forEach var="Clazz" items="${Clazz}">
    
    <c:set var="id" value="${Clazz.id}"/>
    <c:set var="grade" value="${Clazz.grade}"/>
    <c:set var="clz" value="${Clazz.clz}"/>
    <c:set var="subject" value="${Clazz.subject}"/>
    <c:set var="lesson" value="${Clazz.lesson}"/>
    <c:set var="date" value="${Clazz.date}"/>
    <c:set var="start_time" value="${Clazz.start_time}"/>
    <c:set var="end_time" value="${Clazz.end_time}"/>
    <c:set var="venue" value="${Clazz.venue}"/>

        <tr>
            <td>${Clazz.id}</td>
            <td>${Clazz.grade}</td>
            <td>${Clazz.clz}</td>
            <td>${Clazz.subject}</td>
            <td>${Clazz.lesson}</td>
            <td>${Clazz.date}</td>
            <td>${Clazz.start_time}</td>
            <td>${Clazz.end_time}</td>
            <td>${Clazz.venue}</td>
            
        </tr>
        
    </c:forEach>
</table>

<c:url value ="editClass.jsp" var ="clzedit">
<c:param name ="id" value = "${id}"/>
<c:param name ="grade" value = "${grade}"/>
<c:param name ="clz" value = "${clz}"/>
<c:param name ="subject" value = "${subject}"/>
<c:param name ="lesson" value = "${lesson}"/>
<c:param name ="date" value = "${date}"/>
<c:param name ="start_time" value = "${start_time}"/>
<c:param name ="end_time" value = "${end_time}"/>
<c:param name ="venue" value = "${venue}"/>

</c:url>

<td><a href="${clzedit}">
<input type= "button" name="Update" value ="Edit Class">
</a></td>

</body>
</html>