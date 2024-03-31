package tour;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SignUp")
public class SignUp extends HttpServlet{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
          String fname=req.getParameter("fname");
          String lname=req.getParameter("lname");
          String mobile=req.getParameter("pno");
          String email=req.getParameter("email");
          String username=req.getParameter("username");
          String password=req.getParameter("password");
          
          
          try {
        	  Class.forName("com.mysql.cj.jdbc.Driver");
      		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306","root","root");
      		PreparedStatement ps=con.prepareStatement("Insert into tourist.signup values(?,?,?,?,?,?)");
      		ps.setString(1, fname);
      		ps.setString(2, lname);
      		ps.setString(3, email);
      		ps.setString(4, username);
      		ps.setString(5, password);
      		ps.setString(6, mobile );
      		
      		ps.executeUpdate();
      		
      		RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
      		rd.forward(req, resp);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
          
   }
}
