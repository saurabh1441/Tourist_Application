<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: hotpink;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 50%;
        margin: auto;
        padding-top: 50px;
    }
    .card {
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        margin-bottom: 20px;
    }
    .card label {
        display: block;
        margin-bottom: 10px;
    }
    .card input[type="text"],
    .card input[type="email"],
    .card textarea {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .card textarea {
        height: 100px;
    }
    .card input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
    .card input[type="submit"]:hover {
        background-color: #0056b3;
    }
    footer {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 10px 0;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
    h1{
    text-align: center;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="card">
            <h1>Contact Us</h1>
            <form action="home.jsp" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" required></textarea>

                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
    <footer>
        <p>Qspiders , Near Railway Station, Mandir ke samne | Phone: +7894568542 | Email: Edharmatana@gmail.com</p>
    </footer>
</body>
</html>