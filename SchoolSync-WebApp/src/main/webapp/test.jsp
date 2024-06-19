<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" data-bs-theme="dark">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Home</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="assets/vendors/jvectormap/jquery-jvectormap.css">
    <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/vendors/owl-carousel-2/owl.theme.default.min.css">
    
    <!-- Header css -->
    <meta http-equiv="X-UA-Compatible" content="IE edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/headerFooter.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet">
    <!-- End plugin css for this page -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
    
    <style>
    body {
        text-align: center;
         font-weight: 700;
         
        
    }
    h1 {
        color: #fff;
        font-family: Arial, sans-serif;
    }
    fieldset {
        background-color: #000;
        margin: 0 auto;
        width: 40%;
        height: 30%;
        padding: 20px 50px;
        border: none; 
        border-radius: 15px;
        
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
    
    .schedule {
        
		color: #ffffff;
        font-size: 16px;
        padding: 10px 15px;
        cursor: pointer;
        width: 40%;
        height: 40px;
        border-radius: 5px;
        border: none;
               
    }
    
</style>
  </head>
  <body>
    <div class="header_navbar">
        <div class="header_logo">
            <div>SchoolSync</div>
        </div>
        <div class="header_menu-bar">
            <ul>
                <li><a href="home.php">Home</a></li>
                <li><a href="category.php">Products</a></li>
                <li><a href="reviews.php">Reviews</a></li>
                <li><a href="contact.php">Contact</a></li>
                <li><a href="faqs.php">FAQs</a></li>
            </ul>
        </div>
        <div class="header_last">
            <select name="User" id="select-id" class="header_select" onchange="location=this.value;">
                <option disabled selected value="0">User</option>
                <option value="home.php" id="home">Home</option>
                <option value="order.php" id="orders">My Orders</option>
            </select>
        </div>
    </div>
     <br>
     
     <!-- Form -->   
<h1> Schedule a class </h1>
<br>
<form action = "insert" method = "post">
<fieldset>

<input type = "hidden" id = "id" name = "id"/>

<label for="grade">Grade</label><br>
        <select name="grade" id="grade">
            <option value="5">Grade 5</option>
            <option value="6">Grade 6</option>
            <option value="7">Grade 7</option>
            <option value="8">Grade 8</option>
            <option value="9">Grade 9</option>
            <option value="10">Grade 10</option>
            <option value="11">Grade 11</option>
           
        </select><br>

        <label for="class">Class</label><br>
        <select name="class" id="class">
            <option value="A">Class A</option>
            <option value="B">Class B</option>
            <option value="C">Class C</option>
            <option value="D">Class D</option>
            <option value="E">Class E</option>
            
        </select><br>

        <label for="subject">Subject</label><br>
        <select name="subject" id="subject">
            <option value="Mathematics">Mathematics</option>
            <option value="Science">Science</option>
            <option value="History">History</option>
            <option value="English">English</option>
            <option value="IT">IT</option>
           
        </select><br>

        <label for="lesson">Lesson</label><br>
        <input type="text" name="lesson" id="lesson"><br>

        <label for="date">Date</label><br>
        <input type="date" name="date" id="date" oninput="validateDate()">

        <br><label for="start-time">Start Time</label><br>
        <input type="time" name="start-time" id="start-time"><br>

        <label for="end-time">End Time</label><br>
        <input type="time" name="end-time" id="end-time" onblur="validateForm()"><br>

        <label for="venue">Venue</label><br>
        <input type="text" name="venue" id="venue"><br>
        
		<input type = "submit" class="schedule" value = "Schdule"/>


</fieldset>
 </form><br>
 <footer class="f-con">

	<div class="f-text">
	<div id="footer_systemName" style="font-size: 17px;">SchoolSync</div>
	<p style="font-size: 11px;">Created By: © 2023 G333 </p>
	</div>

    <div>
	<section id = "footer_topic" style="font-size: 14px; text-align: center; margin-top:20px; font-size:17px;">Important Links</section>
	<div class="footer-links">
	<a style="padding-left:0px;" href="about.php">About Us</a>
	<a style="padding-left:30px;" href="terms.php">Terms & Conditions</a>
	<a style="padding-left:30px;" href="contact.php">Contact Us</a>
	<a style="padding-left:30px;" href="privacy.php">Privacy Policy</a>
    </div>
	</div>
	
	<div class="footer-social">
	<a style="padding-left:30px;" href="http://www.linkedin.com" target="_blank"><img class="linkedin" src ="img/social/li1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.twitter.com" target="_blank"><img class="tw" src ="img/social/tw1.png"></img></a>
	<a style="padding-left:30px;" href="http://www.instagram.com" target="_blank"><img class="ins" src ="img/social/ins1.png"></img></a>
	</div>
	
</footer>


<script>
//validate date
    function validateDate() {
        var inputDate = new Date(document.getElementById("date").value);
        var currentDate = new Date();
        
        if (inputDate < currentDate) {
            alert("Invalid date.");
            document.getElementById("date").value = "";
            return false;
        } else {
            return true;
        }
    }
    
//validate time period
    function validateForm() {
        var startTime = document.getElementById("start-time").value;
        var endTime = document.getElementById("end-time").value;

        if (startTime >= endTime) {
            alert("Invalid time period.");
            document.getElementById("start-time").value = "";
            document.getElementById("end-time").value = "";
            return false;
        }else {
            return true; 
        }
    }
</script>
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="assets/vendors/chart.js/Chart.min.js"></script>
    <script src="assets/vendors/progressbar.js/progressbar.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
    <script src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="assets/vendors/owl-carousel-2/owl.carousel.min.js">
</script>

</body>
</html>
    