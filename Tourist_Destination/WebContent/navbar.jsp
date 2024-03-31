<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
    margin: 0;
    padding: 0;
    background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOvrXKV3AZHfMgCk7cxc9qDXZm4Gg9m1d2osuX-wJsKZHU4YixX6QyCwscQhm4L43M4Bc&usqp=CAU'); /* Add the path to your background image */
    background-size: cover;
    background-position: center;
    font-family: Arial, sans-serif; /* Fallback font */
}

.header {
    text-align: center;
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.7); /* Light gray background with transparency */
}

.navbar {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

.navbar a {
    text-decoration: none;
    color: white;
    padding: 10px 20px;
    margin: 0 10px;
    border-radius: 5px;
    background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background for links */
    transition: background-color 0.3s;
}

.navbar a:hover {
    background-color: rgba(0, 0, 0, 0.7); /* Darker background on hover */
}
</style>

</head>
<body>
<div class="header">
    <h1>Welcome to Kesari Tours</h1>
    <!-- Add any other header content here -->
</div>

<div class="navbar">
    <a href="destination.jsp" target="_blank">Destination</a>
    <a href="accomodation.jsp" target="_blank">Accommodation</a>
    <a href="SignUp.jsp" target="_blank">Book Your Ticket</a>
    <a href="contactpage.jsp" target="_blank">Contact Us</a>
    <a href="AdminLogin.jsp" target="_blank">Admin Login</a>
</div>

<!-- Include the Vibrant.js library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/vibrant.js/2.1.2/Vibrant.min.js"></script>
</body>
</html>
