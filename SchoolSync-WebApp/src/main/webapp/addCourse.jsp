<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>
</head>
<body>
    <h1>Add a New Course</h1>
    <form action="insertCourse" method="post">
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required><br><br>

        <label for="grade">Grade:</label>
        <input type="text" name="grade" id="grade" required><br><br>

        <label for="fee">Fee:</label>
        <input type="text" name="fee" id="fee" required><br><br>

        <label for="duration">Duration:</label>
        <input type="text" name="duration" id="duration" required><br><br>

        <input type="submit" value="Add Course">
    </form>
</body>
</html>
