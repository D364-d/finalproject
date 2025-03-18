<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
    background-image: url(BGG1.jpg);
    width:100%;
    background-size: cover;
    background-position: center;
    
}

.container {
    display: flex;
    justify-content: space-around;
    width: 90%;
    margin-bottom: 80px;
}

.btn {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 50px;
    color: white;
    border: none;
    cursor: pointer;
    font-size: 12px;
    background-color: rgba(0, 0, 0, 0.5); /* Black with 50% transparency */ /* Text color */
    border-radius: 15px;
    text-align: center;
    background: linear-gradient(rgba(0, 0, 0, 0.4), rgba(255, 255, 255, 0.4));
    height: 30vh;
    display: flex;
    align-items: center;
    justify-content: center;
}

.btn img {
    max-width: 210px;
    max-height: 210px;
    margin-bottom: 5px;
        width: 200px;
    height: 200vh;
    border-radius: 50%;
    box-shadow: 0 4px 8px rgba(0,0,0,0.5);
}

.btn:hover {
    transform:scale(1.2);
}

</style>
<body>
<div class="container">
        <button class="btn"><a href="https://k">
            <img src="dinesh.JPG" alt="Photo 1"></a>
            <h2>GURRAM DINESH</h2>
        </button>
        <button class="btn"><a href="https://babblu0810.github.io/collegeprojects/portfolio/index%20(2).html">
            <img src="nithin.jpg" alt="Photo 2"></a>
           <h2>TADI NITHIN SHYAM</h2>
        </button>
        <button class="btn"><a href="https://kush0208.github.io/collegeprojects/portfolio/index.html">
            <img src="bangari.jpg" alt="Photo 3"></a>
            <h2>KOTHAPALLI BANGARA SETTI</h2>
        </button>
        <button class="btn"><a href="https://mahesh0109.github.io/Portfolio/">
            <img src="ashok.jpg" alt="Photo 4"></a>
            <h2>DASARI ASHOK KUMAR</h2>
        </button>
    </div>
</body>
</html>