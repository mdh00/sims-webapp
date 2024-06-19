<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Student Information</title>
    <style type="text/css">
        body {
            font-family: Hind SemiBold;
        }

        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <table>
    
    <tr>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>User Name</th>
			<th>Password</th>
			<th>Role</th>
			<th>Student ID</th>
			<th>Address</th>
		</tr>
		
        <c:forEach var="std" items="${std}">
            <c:set var="id" value="${std.id}" />
            <c:set var="name" value="${std.name}" />
            <c:set var="email" value="${std.email}" />
            <c:set var="phone" value="${std.phone}" />
            <c:set var="username" value="${std.username}" />
            <c:set var="password" value="${std.password}" />
            <c:set var="role" value="${std.role}" />
            <c:set var="std_id" value="${std.std_id}" />
            <c:set var="address" value="${std.address}" />

            <tr>
                
                <td>${std.id}</td>
                <td>${std.name}</td>
                <td>${std.email}</td>
                <td>${std.phone}</td>
                <td>${std.username}</td>
                <td>${std.password}</td>
                <td>${std.role}</td>
                <td>${std.std_id}</td>
                <td>${std.address}</td>
            

    <td><c:url value="updatestudent.jsp" var="stuupdate">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="username" value="${username}" />
        <c:param name="password" value="${password}" />
        <c:param name="role" value="${role}" />
        <c:param name="std_id" value="${std_id}" />
        <c:param name="address" value="${address}" />
    </c:url><a href="${stuupdate}">
        <input type="button" name="updatestu" value="Update Student Data">
    </a></td>

    <td>

    <c:url value="deletestudent.jsp" var="studelete">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="username" value="${username}" />
        <c:param name="password" value="${password}" />
        <c:param name="role" value="${role}" />
        <c:param name="std_id" value="${std_id}" />
        <c:param name="address" value="${address}" />
    </c:url><a href="${studelete}">
        <input type="button" name="deletestu" value="Delete Student Account">
    </a></td>

    
    
    </tr>
        </c:forEach>
    </table>
</body>
</html>