package tour;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

@WebServlet("/update")
public class update extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String fname = req.getParameter("firstName");
	    String lname=req.getParameter("lastName");
	    String dob = req.getParameter("dob");
	    String gender=req.getParameter("gender");
	    String mobile = req.getParameter("mobile");
	    String email=req.getParameter("email");
	    String address=req.getParameter("address");
	    String source=req.getParameter("source");
	    String destination=req.getParameter("destination");
	    String transport=req.getParameter("transportationType");
	    String number = req.getParameter("edit");
	    HttpSession hs = req.getSession();
	    String mobileFromSession = (String)hs.getAttribute("number");

	    
	    try {
		    Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=root");
	        PreparedStatement pstmt = con.prepareStatement("update tourist.booking set fname=?,lname=?,DOB=?,gender=?, mobile=?, email=?, address=?, source=?, destination=?, transport=? where mobile=?");
	        
	        pstmt.setString(1, fname);
	        pstmt.setString(2, lname);
	        pstmt.setString(3, dob);
	        pstmt.setString(4, gender);
	        pstmt.setString(5, mobile);
	        pstmt.setString(6, email);
	        pstmt.setString(7, address);
	        pstmt.setString(8, source);
	        pstmt.setString(9, destination);
	        pstmt.setString(10,transport);
	        pstmt.setString(11, mobileFromSession);
	        
	      
	        pstmt.executeUpdate();
	        con.close();
//	        RequestDispatcher rd = req.getRequestDispatcher("BookingDetails.jsp");
//	        rd.forward(req, resp);
	        resp.sendRedirect("BookingDetails.jsp");
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}

}
