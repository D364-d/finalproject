<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<style>
      body {
        font-family: "Georgia", serif;
        background: url("book2.jpg") no-repeat center center fixed;
        background-size: cover;
        color: white;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      form {
        background: rgba(0, 0, 0, 0.8);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 6px 20px rgba(255, 255, 255, 0.2);
        width: 350px;
        text-align: center;
      }

      h2 {
        color: gold;
        font-size: 28px;
        margin-bottom: 20px;
        text-transform: uppercase;
      }

      input {
        width: 90%;
        padding: 12px;
        margin: 10px 0;
        border-radius: 8px;
        border: none;
        font-size: 16px;
      }

      input[type="submit"] {
        background-color: gold;
        color: black;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
        border-radius: 8px;
        padding: 12px 24px;
        font-size: 18px;
      }

      input[type="submit"]:hover {
        background-color: #e6b800;
        transform: scale(1.05);
      }
    </style>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setHeader("Expires", "0"); // Prevents caching
if(session.getAttribute("username")!=null)
{
	response.sendRedirect("welcome.jsp");	
}
%>
<form action="register">
	<input type="text" placeholder="enter username" name="username"><br>
	<input type="email" placeholder="enter email" name="email"><br>
	<input type="password" placeholder="enter password" name="pass1"><br>
	<input type="password" placeholder="confirm password" name="pass2"><br>
	<input type="submit" value="register"><br>
</form>
</body>
</html>