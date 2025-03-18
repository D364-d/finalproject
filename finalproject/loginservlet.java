package demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login") 
public class loginservlet extends HttpServlet { 
  protected void doGet(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException { 
    
   String user=request.getParameter("username"); 
   String pswd=request.getParameter("pass"); 
   
    String url = "jdbc:postgresql://localhost:5432/food"; 
       String username = "postgres"; 
       String dbPassword = "Admin"; 
        
  
       String sql="select password from users where username='"+user+"'"; 
        
       
       PrintWriter out=response.getWriter(); 
   try { 
       Class.forName("org.postgresql.Driver"); 
       Connection con=DriverManager.getConnection(url, username, dbPassword); 
       Statement st=con.createStatement(); 
       ResultSet rs=st.executeQuery(sql); 
       if(rs.next()) 
       {
    	  String v=rs.getString(1); 
        if(pswd.equals(v)) 
        { 
         System.out.println("user logged in"); 
         response.sendRedirect("index.jsp"); 
        } 
        else 
        { 
         System.out.println("password invalid"); 
         response.sendRedirect("register.jsp"); 
        } 
       } 
   } 
   catch(Exception e) 
   { 
    System.out.println(e); 
    out.println(e); 
   } 
 } 
}