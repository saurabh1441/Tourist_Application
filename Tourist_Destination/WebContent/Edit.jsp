<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; 
            margin: 0;
            padding: 0;
            color: #333;
        }

        .container {
            width: 50%;
            margin: auto;
            padding-top: 20px;
        }

        .booking-form {
            background: #fff; /* White background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin-bottom: 20px;
        }

        .booking-form h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #007bff; /* Primary color */
        }

        .booking-form label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .booking-form input[type="text"],
        .booking-form input[type="email"],
        .booking-form input[type="number"],
        .booking-form input[type="date"],
        .booking-form select,
        .booking-form textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ced4da; 
            border-radius: 5px;
            box-sizing: border-box; 
            font-size: 16px;
            color: #495057; 
        }

        .booking-form select {
            appearance: none;
            -webkit-appearance: none; 
            -moz-appearance: none; 
            background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="%23333" class="bi bi-caret-down" viewBox="0 0 16 16"><path d="M5 8.828L.354 4.182a.5.5 0 01.708-.708L5 7.414l4.938-4.94a.5.5 0 11.707.708L5.707 8.828a.5.5 0 01-.707 0z"/><path d="M5 7.828L.354 3.182a.5.5 0 01.708-.708L5 6.414l4.938-4.94a.5.5 0 11.707.708L5.707 7.828a.5.5 0 01-.707 0z"/></svg>') no-repeat right 10px center;
            background-size: 16px;
        }

        .booking-form button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background-color: red;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .booking-form button:hover {
            background-color: hotpink;
        }

        .booking-form .icon {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="booking-form">
            <h2 style="color:red;"><i class="fas fa-suitcase icon"></i>Update TIcket</h2>
            <form action="update" method="post">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" >

                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" >

                <label for="dob">Date of Journey:</label>
                <input type="date" id="dob" name="dob" >

                <label for="gender">Gender:</label>
                <select id="gender" name="gender" >
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>

                <label for="mobile">Mobile Number:</label>
                <input type="text" id="mobile" name="mobile" >

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" >

                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" ></textarea>

                <label for="source">Source:</label>
                <select id="source" name="source" >
                    <option disabled selected>-select-</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="New Delhi">New Delhi</option>
                    <option value="New York">Pune</option>
                    <option value="Tokyo">Kashi</option>
                </select>

                <label for="destination">Destination:</label>
                <select id="destination" name="destination" >
                    <option disabled selected>-select-</option>
                    <option value="Sydney">New Delhi</option>
                    <option value="London">Pune</option>
                    <option value="Bali">Kashi</option>
                    <option value="Hongkong">Mumbai</option>
                </select>

                <label for="transportationType">Transportation Type:</label>
                <select id="transportationType" name="transportationType" required>
                    <option disabled selected>-select-</option>
                    <option value="ship">Ship</option>
                    <option value="airplane">Airplane</option>
                    <option value="train">Private Jet</option>
                    <option value="car">Bus</option>
                </select>

                

                <button type="submit"><i class="fas fa-paper-plane icon"></i> Submit</button>
            </form>
        </div>
    </div>
    
    <%
        //  edit is the attribute you want to set in session
        String number = request.getParameter("edit");
        // Setting number attribute in session
        session.setAttribute("number", number);
    %>
    
</body>
</html>