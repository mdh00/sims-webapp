<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Class Management</title>
<style>
body {
	text-align: center;
	font-family: Arial, sans-serif;
	margin: 0;
    	padding: 0;
}

h1 {
	color: #000;
	font-family: Arial, sans-serif;
	text-align: center;
}

table {
	width: 80%;
	border-collapse: collapse;
	margin: 20px auto;
	border-radius: 15px;
	padding: 20px 30px;
    border: none; 
    box-shadow: -3px -3px 10px #888888, 3px 3px 10px #888888;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
}

td {
	text-align: left;
}

th {
	background-color: #e1e7ea;
	color: #000;
	text-align: center;
}

tr:hover {
	background-color: #ddd;
}

.delete-button {
	background-color: #ff0000;
	color: #ffffff;
    font-size: 14px;
    padding: 8px 16px;
    cursor: pointer;
    border-radius: 5px;
    border: none;
    margin: 4px 2px;
    display: inline-block;
    box-shadow: 3px 3px 5px #888888;
}

.edit-button {
    background-color: #3664e7;
	color: #ffffff;
    font-size: 14px;
    padding: 8px 16px;
    cursor: pointer;
    border-radius: 5px;
    border: none;
    margin: 4px 2px;
    display: inline-block;
    box-shadow: 3px 3px 5px #888888;
        
}

.search {
     width: 200px;
     text-align: left;
     font-size: 15px;
     border: none; 
    box-shadow:3px 3px 10px #888888;
}
    
.search-container {         
    margin-top: -20px;
    margin-left: 850px;
    justify-content: space-between;
    padding: 10px;
}
        
.buttons{
	margin-left: 20px;	
}

.schedule-container{
	margin-top: -50px;
    margin-left: -900px;
   	justify-content: space-between;
    padding: 5px;
}

.schedule {
	background-color: #3664e7;
	color: #ffffff;
    font-size: 14px;
    padding: 8px 16px;
    cursor: pointer;
    border-radius: 5px;
    border: none;
    margin: 4px 2px;
    display: inline-block;
    box-shadow: 3px 3px 5px #888888;
}           
</style>
<script>
	function searchTable() {
		var input, filter, table, tr, td, i, txtValue;
		input = document.getElementById("searchInput");
		filter = input.value.toUpperCase();
		table = document.querySelector("table");
		tr = table.getElementsByTagName("tr");

		for (i = 1; i < tr.length; i++) { 
			td = tr[i].getElementsByTagName("td");
			let match = false;
			for (let j = 0; j < td.length; j++) {
				txtValue = td[j].textContent || td[j].innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					match = true;
					break;
				}
			}
			if (match) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
</script>
</head>
<body>

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
<!-- Header  end-->

    </div>
	<h1>Class Management</h1>
	<div class="search-container">
	<input type="text" id="searchInput" class="search" oninput="searchTable()"
		placeholder="Search"></div>
	
	<div class= "schedule-container">	
	<c:url value="ClassSchedule.jsp" var="cschedule"></c:url>
	<a href="${cschedule}">
	<input type="button" name="schedule" class="schedule" value="Schedule Class">
	</a></div>	

	<table style="background-color: #e1e7ea;">

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

		<c:forEach var="classData" items="${Clazz}">

			<c:set var="id" value="${classData.id}" />
			<c:set var="grade" value="${classData.grade}" />
			<c:set var="clz" value="${classData.clz}" />
			<c:set var="subject" value="${classData.subject}" />
			<c:set var="lesson" value="${classData.lesson}" />
			<c:set var="date" value="${classData.date}" />
			<c:set var="start_time" value="${classData.start_time}" />
			<c:set var="end_time" value="${classData.end_time}" />
			<c:set var="venue" value="${classData.venue}" />





			<tr>
				<td>${classData.id}</td>
				<td>${classData.grade}</td>
				<td>${classData.clz}</td>
				<td>${classData.subject}</td>
				<td>${classData.lesson}</td>
				<td>${classData.date}</td>
				<td>${classData.start_time}</td>
				<td>${classData.end_time}</td>
				<td>${classData.venue}</td>
				
				<td><c:url value="editClass.jsp" var="cedit">
						<c:param name="id" value="${id}" />
						<c:param name="grade" value="${grade}" />
						<c:param name="clz" value="${clz}" />
						<c:param name="subject" value="${subject}" />
						<c:param name="lesson" value="${lesson}" />
						<c:param name="date" value="${date}" />
						<c:param name="start_time" value="${start_time}" />
						<c:param name="end_time" value="${end_time}" />
						<c:param name="venue" value="${venue}" />
					</c:url><div class="buttons"> <a href="${cedit}"> <input type="button" class="edit-button"
						value="Edit Class">
				</a></div></td>
				<td><c:url value="deleteClass.jsp" var="cdelete">
						<c:param name="id" value="${id}" />
						<c:param name="grade" value="${grade}" />
						<c:param name="clz" value="${clz}" />
						<c:param name="subject" value="${subject}" />
						<c:param name="lesson" value="${lesson}" />
						<c:param name="date" value="${date}" />
						<c:param name="start_time" value="${start_time}" />
						<c:param name="end_time" value="${end_time}" />
						<c:param name="venue" value="${venue}" />
					</c:url> <div class="buttons"><a href="${cdelete}">
					<input type="button" name="delete" class="delete-button" value="Delete Class">
				</a></div></td>




			</tr>

		</c:forEach>
	</table>

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