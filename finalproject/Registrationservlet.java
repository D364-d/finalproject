package demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registrationservlet
 */
@WebServlet("/register")
public class Registrationservlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("username");
		String email=request.getParameter("email");
		String pass1=request.getParameter("pass1");
		String paass2=request.getParameter("pass2");
		String url = "jdbc:postgresql://localhost:5432/food"; 
		String username = "postgres"; 
	       String dbPassword = "Admin"; 
	String sql="INSERT INTO users VALUES(?,?,?)";
	PrintWriter out=response.getWriter(); 
	   try { 
	       Class.forName("org.postgresql.Driver"); 
	       Connection con=DriverManager.getConnection(url, username, dbPassword); 
	       PreparedStatement st=con.prepareStatement(sql);
	       st.setString(1, user);
	       st.setString(2, email);
	       st.setString(3, pass1);
	       int row=st.executeUpdate();
	       if(row>0)
	       {
	    	   System.out.println("row inserted");
	    	   response.sendRedirect("login.jsp");
	       }
	       
	       else {
	    	   System.out.println("row not inserted");
	    	   response.sendRedirect("register.jsp");
	       }
	       
	       }
	   catch(Exception e) 
	   { 
	    e.printStackTrace(); 
	    out.println(e); 
	   } 
	       }
}