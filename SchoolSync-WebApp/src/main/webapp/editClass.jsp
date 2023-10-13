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
	String grade = request.getParameter("grade");
	String clz = request.getParameter("clz");
	String subject = request.getParameter("subject");
	String lesson = request.getParameter("lesson");
	String date = request.getParameter("date");
	String start_time = request.getParameter("start_time");
	String end_time = request.getParameter("end_time");
	String venue = request.getParameter("venue");
	%>


<h1> Schedule a class </h1>
<form action = "#" method = "post">
<fieldset>

<input type = "hidden" id = "id" value = "id"/>

<label for="grade">Grade:</label>
        <select name="grade" id="<%=id%>">
            <option value="1">Grade 1</option>
            <option value="2">Grade 2</option>
            <option value="3">Grade 3</option>
            <!-- Add more grade options as needed -->
        </select><br>

        <label for="class">Class:</label>
        <select name="class" id="<%=clz%>">
            <option value="A">Class A</option>
            <option value="B">Class B</option>
            <option value="C">Class C</option>
            <!-- Add more class options as needed -->
        </select><br>

        <label for="subject">Subject:</label>
        <select name="subject" id="<%=subject%>">
            <option value="math">Math</option>
            <option value="science">Science</option>
            <option value="history">History</option>
            <!-- Add more subject options as needed -->
        </select><br>

        <label for="lesson">Lesson:</label>
        <input type="text" name="lesson" id="<%=lesson%>"><br>

        <label for="date">Date:</label>
        <input type="date" name="date" id="<%=date%>"><br>

        <label for="start-time">Start Time:</label>
        <input type="time" name="start-time" id="<%=start_time%>"><br>
v
        <label for="end-time">End Time:</label>
        <input type="time" name="end-time" id="<%=end_time%>"><br>

        <label for="venue">Venue:</label>
        <input type="text" name="venue" id="<%=venue%>"><br>
        
 
<input type = "submit" value = "Update Class"/>
</fieldset>
 </form>
</body>
</html>