<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Page</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('https://i.ibb.co/G0bh4gs/top-view-online-shopping-concept-with-credit-card-smart-phone-computer-isolated-office-yellow-table.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
        }

        header .buttons {
            display: flex;
            gap: 10px;
        }

        header .buttons button {
            background: #555;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        header .buttons button:hover {
            background: #777;
        }

        header .search {
            flex: 1;
            margin: 0 20px;
            display: flex;
            align-items: center;
        }

        header .search input {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
        }

        .sections {
            display: flex;
            justify-content: space-evenly;
            margin: 20px;
            text-align: center;
        }

        .sections .category {
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .sections .category img {
            width: 300px;
            height: auto;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        .sections .category:hover {
            transform: scale(1.1);
        }

        .product-list {
            display: none;
            margin: 20px;
        }

        .product-list .product {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .product img {
            width: 150px;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }

        .product .details {
            flex: 1;
            margin: 0 20px;
        }

        .product .actions button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .product .actions button:hover {
            background: #0056b3;
        }

        .product .actions .buy-now {
            background: #28a745;
            margin-left: 10px;
        }

        .product .actions .buy-now:hover {
            background: #218838;
        }

        .cart {
            display: none;
            padding: 20px;
            background: white;
        }

        .cart .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        .cart .cart-item img {
            width: 100px;
            height: auto;
            border-radius: 10px;
        }

        .cart .actions button {
            background: #d9534f;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
        }

        .cart .actions button:hover {
            background: #c9302c;
        }

        .order-form {
            display: none;
            padding: 20px;
            background: white;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            margin: 20px;
            border-radius: 10px;
        }

        .order-form input, .order-form button {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .order-form button {
            background: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }

        .order-form button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <header>
        <h1>Manadera mawa</h1>
        <div class="search">
            
        </div>
        <div class="buttons">
            <button id="home">Home</button>
            <button id="cart">Cart</button>
            <button id="profile">Profile</button>
            <button id="logout"></button>
        </div>
    </header>

    <div class="sections" id="homePage">
        <div class="category" onclick="loadProducts('Breakfast')">
            <img src="https://t3.ftcdn.net/jpg/01/11/05/00/360_F_111050000_pd88DoPXpkLdEY1fjJlvPkgwmYfZ74bm.jpg" alt="Mobile">
            <h2>Breakfast</h2>
        </div>
        <div class="category" onclick="loadProducts('Lunch')">
            <img src="https://png.pngtree.com/png-clipart/20230813/original/pngtree-a-vintage-worn-stamp-with-inscription-for-lunchtime-vector-picture-image_10530928.png" alt="Laptop">
            <h2>Lunch</h2>
        </div>
        <div class="category" onclick="loadProducts('Dinner')">
            <img src="https://previews.123rf.com/images/alexandra86/alexandra861512/alexandra86151200056/49846530-text-dinner-in-the-sign-of-fork.jpg
            " alt="Watches">
            <h2>Dinner</h2>
        </div>
    </div>

    <div id="productPage" class="product-list"></div>
    <div id="cartPage" class="cart"></div>
   <div id="orderForm" class="order-form">
    <h2>Checkout</h2>
    <input type="text" id="phoneNumber" placeholder="Enter 10-digit phone number">
    <input type="text" id="address" placeholder="Enter your address">
    <p>Total: <span id="orderTotal"></span></p>
    <button onclick="placeOrder()">Place Order</button>
</div>

    <div id="profilePage" class="order-form">
        <h2>Your Orders</h2>
        <ul id="orderHistory"></ul>
    </div>
   <script src="script.js"></script>
       
    
</body>
</html>
