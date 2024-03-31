<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Record</title>
</head>
<body>

<%
String mobileToDelete = request.getParameter("Delete");

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourist?user=root&password=root");

    // Prepare and execute the SQL delete statement
    PreparedStatement ps = con.prepareStatement("DELETE FROM tourist.booking WHERE mobile = ?");
    ps.setString(1, mobileToDelete);
    ps.executeUpdate();

    // Close resources
    ps.close();
    con.close();

    // Redirect back to the booking details page after successful deletion
    RequestDispatcher rd = request.getRequestDispatcher("BookingDetails.jsp");
    rd.forward(request, response);

    

%>

</body>
</html>
