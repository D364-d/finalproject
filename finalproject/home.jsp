<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> FOOD DELIVERY</title>
<style>
    body {
      font-family: Arial, sans-serif;
      background: url("book.jpg") no-repeat center center fixed;
      background-size: 100% auto; /* Full width, auto height */
      background-color: black;
      color: white;
      height: 100vh;
      display: flex;
      justify-content: flex-start; /* Align content to the left */
      align-items: center;
      flex-direction: column;
      padding: 20px;
    }

    .container {
      background: rgba(0, 0, 0, 0.6);
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
      width: 30%;
      max-width: 600px;
      text-align: left; /* Align text to the left */
      margin-left: 800px; /* Push it slightly from the edge */
    }

    .button-container {
      display: flex;
      flex-direction: column;hygfdgt
      align-items: flex-start; /* Align buttons to the left */
      margin-left: 20px; /* Push from the edge */
    }

    h1 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    button {
      background-color: rgba(255, 152, 0, 0.9);
      color: white;
      border: none;
      padding: 14px 28px;
      margin: 20px; /* Add spacing */
      font-size: 20px;

      font-weight: bold;
      cursor: pointer;
      border-radius: 10px;
      text-align: left;
      transition: 0.3s;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
    }
    .button-container {
      display: flex;
      flex-direction: column;
      align-items: flex-start; /* Align buttons to the left */
      margin-top: 20px; /* Space between H1 and buttons */
      margin-left: 0; /* Remove extra left margin */
    }

    button:hover {
      background-color: rgba(230, 137, 0, 1);
      transform: scale(1.08);
    }

    a {
      text-decoration: none;
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
	response.sendRedirect("index.jsp");	
}
%>

 <div class="container">
    <h1>FOOD DELIVERY</h1>

    <div class="button-container">
      <a href="login.jsp"><button>Login</button></a>
      <a href="register.jsp"><button>New Registration</button></a>
    </div>
    </div>
</body>
</html>