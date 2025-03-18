<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<style>
      body {
        font-family: "Georgia", serif;
        background: url("book1.png") no-repeat center center fixed;
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

      input {
        width: 90%;
        padding: 10px;
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
      }

      input[type="submit"]:hover {
        background-color: #e6b800;
        transform: scale(1.05);
      }
    </style>
</head>
<body>
<form action="login">
	<input type="text" placeholder="enter username" name="username"><br>
	<input type="password" placeholder="enter password" name="pass"><br>
	<input type="submit" value="login">	
</form>
</body>
</html>