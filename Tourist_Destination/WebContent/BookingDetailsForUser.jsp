<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <style type="text/css">
    
table,th,td {
    border-collapse:collapse; 
}
th{
background-color: yellow;
color: black;
}
tr{
background-color: black;
color: white;
}
tr:hover {
	background-color: green;
}
body {
	display: flex;
	justify-content: center;
	align-items: center;
	
}
table {
	position: relative;
	top: 50px;
}    
    </style>
</head>
<body>
    <table border="1">
        <thead>
            <tr>
                <th>FIRST NAME</th>
                <th>LAST NAME</th>
                <th>DATE OF BIRTH</th>
                <th>GENDER</th>
                <th>MOBILE</th>
                <th>EMAIL</th>
                <th>ADDRESS</th>
                <th>SOURCE</th>
                <th>DESTINATION</th>
                <th>TRANSPORT</th>
            </tr>
        </thead>
            <% 
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourist?user=root&password=root");
                PreparedStatement ps = con.prepareStatement("select * from tourist.booking");
                ResultSet rs = ps.executeQuery();
                String value = "";
                while(rs.next()) {
                	value = rs.getString("mobile");
                    String fname = rs.getString(1);
                    String lname = rs.getString(2);
                    String dob =  rs.getString(3);
                    String gender = rs.getString(4);
                    String mobile = rs.getString(5);
                    String email = rs.getString(6);
                    String address = rs.getString(7);
                    String source = rs.getString(8);
                    String destination = rs.getString(9);
                    String transport = rs.getString(10);
            %>
            <tbody>
            <tr>
                <td><%= fname %></td>
                <td><%= lname %></td>
                <td><%= dob %></td>
                <td><%= gender %></td>
                <td><%= mobile %></td>
                <td><%= email %></td>
                <td><%= address %></td>
                <td><%= source %></td>
                <td><%= destination %></td>
                <td><%= transport %></td>
                
            </tr>
            <% 
                }
                rs.close();
                ps.close();
                con.close();
            %>
            </tbody>
    </table>
</body>
</html>
