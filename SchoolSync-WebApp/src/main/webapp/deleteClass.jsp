<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Cancel Class</title>
<style>
    body {
        text-align: center;
         font-weight: 700;
         margin: 0;
    	padding: 0;
        
    }
    h1 {
        color: #000;
        font-family: Arial, sans-serif;
    }
    fieldset {
        background-color: #e1e7ea;
        margin: 0 auto;
        width: 30%;
        padding: 20px 50px;
        border: none; 
        border-radius: 15px;
        box-shadow: -3px -3px 10px #888888, 3px 3px 10px #888888;
    }
    form {
        text-align: center;
        font-family: Arial, sans-serif;
    }
    select, input {
        width: 60%; 
        height: 25px;
        margin-bottom: 20px;
    }
    
    .cancel {
        background-color: #3664e7;
		color: #ffffff;
        font-size: 16px;
        padding: 10px 15px;
        cursor: pointer;
        width: 40%;
        height: 40px;
        border-radius: 5px;
        border: none;
        box-shadow: 3px 3px 5px #888888;       
    }
    
</style>
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
	
	
	<!-- Header -->

<div class="header_navbar">

        <div class="header_logo">
            <div>SchoolSync</div>
        </div>

        <div class="header_menu-bar">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="">Support</a></li>
                <li><a href="">Library</a></li>
                <li><a href="">News</a></li>
                <li><a href="">About Us</a></li>
            </ul>
        </div>

        <div class="header_last">

            <select name="User" id="select-id" class="header_select" onchange="location=this.value;">
                <option disabled selected value="0">User</option>
                <option value="home.jsp" id="home">Home</option>
                <option value="login.jsp" id="orders">Logout</option>
            </select>

        </div>

    </div>
    <!-- Header  end-->
	<h1>Cancel a class</h1>
	<form action="delete" method="post">
		<fieldset>

			<input type="hidden" name="id" value="<%=id%>"readonly />
			 
			<label for="grade">Grade</label><br>
			<select name="grade" id="<%=id%>"disabled>
				<option value="5"
					<%=grade != null && grade.equals("5") ? "selected" : ""%>>Grade
					5</option>
				<option value="6"
					<%=grade != null && grade.equals("6") ? "selected" : ""%>>Grade
					6</option>
				<option value="7"
					<%=grade != null && grade.equals("7") ? "selected" : ""%>>Grade
					7</option>
				<option value="8"
					<%=grade != null && grade.equals("8") ? "selected" : ""%>>Grade
					8</option>
				<option value="9"
					<%=grade != null && grade.equals("9") ? "selected" : ""%>>Grade
					9</option>
				<option value="10"
					<%=grade != null && grade.equals("10") ? "selected" : ""%>>Grade
					10</option>
				<option value="11"
					<%=grade != null && grade.equals("11") ? "selected" : ""%>>Grade
					11</option>
					
					
			</select><br> <label for="class">Class</label><br>
			<select name="class"
				id="<%=clz%>"disabled>
				<option value="A" <%="A".equals(clz) ? "selected" : ""%>>Class
					A</option>
				<option value="B" <%="B".equals(clz) ? "selected" : ""%>>Class
					B</option>
				<option value="C" <%="C".equals(clz) ? "selected" : ""%>>Class
					C</option>
				<option value="D" <%="D".equals(clz) ? "selected" : ""%>>Class
					D</option>
				<option value="E" <%="E".equals(clz) ? "selected" : ""%>>Class
					E</option></select><br>
					
			<label for="subject">Subject</label> <br>
			<select name="subject" id="<%=subject%>"disabled>
				<option value="Mathematics"
					<%="Mathematics".equals(subject) ? "selected" : ""%>>Mathematics</option>
				<option value="Science"
					<%="Science".equals(subject) ? "selected" : ""%>>Science</option>
				<option value="History"
					<%="History".equals(subject) ? "selected" : ""%>>History</option>
				<option value="English"
					<%="English".equals(subject) ? "selected" : ""%>>English</option>
				<option value="IT"
					<%="IT".equals(subject) ? "selected" : ""%>>IT</option></select><br> 
			
			<label for="lesson">Lesson</label> <br>
			<input type="text" name="lesson" value="<%=lesson%>"readonly><br>
			
			<label for="date">Date</label><br>	
			<input type="date" name="date" id="date" value="<%=date%>" oninput="validateDate()" readonly><br> 
			
			<label for="start-time">Start Time</label><br>
			<input type="time" name="start-time" id="start-time" value="<%=start_time%>"readonly><br>
			
			<label for="end-time">End Time</label><br>
			<input type="time" name="end-time" id="end-time" value="<%=end_time%>" onblur="validateForm()"readonly><br>
			
			<label for="venue">Venue</label><br>
			<input type="text" name="venue"value="<%=venue%>"readonly><br>

			<input type="submit" class="cancel" value="Cancel Class" />
		</fieldset>
	</form>
<br>
 <!-- Footer-->
<footer class="f-con">

	<div class="f-text">
	<div id="footer_systemName" style="font-size: 17px;">SchoolSync</div>
	<p style="font-size: 11px;">Created By: © 2023 G333 </p>
	</div>

    <div>
	<section id = "footer_topic" style="font-size: 14px; text-align: center; margin-top:20px; font-size:17px;">Important Links</section>
	<div class="footer-links">
	<a style="padding-left:0px;" href="">About Us</a>
	<a style="padding-left:30px;" href="terms.php">Terms & Conditions</a>
	<a style="padding-left:30px;" href="">Contact Us</a>
	<a style="padding-left:30px;" href="">Privacy Policy</a>
    </div>
	</div>
	
	<div class="footer-social">
	<a style="padding-left:30px;" href="http://www.linkedin.com" target="_blank"><img class="linkedin" src ="img/social/li1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.twitter.com" target="_blank"><img class="tw" src ="img/social/tw1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.instagram.com" target="_blank"><img class="ins" src ="img/social/ins1.png"></img></a>
	</div>
	
</footer>
 <!-- footer  end-->
 
</body>
</html>