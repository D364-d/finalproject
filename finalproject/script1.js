const products = {
            Breakfast: [
                { name: 'Idly', price: 30, image: 'https://i0.wp.com/delishbite.in/wp-content/uploads/2023/01/blog_1-2.jpg?resize=1000%2C1250&ssl=1' },
                { name: 'Dosa', price: 25, image: 'https://www.daringgourmet.com/wp-content/uploads/2023/06/Dosa-Recipe-3.jpg'},
                { name: 'Pancake', price: 100, image: 'https://media.istockphoto.com/id/161170090/photo/pancakes-with-berries-and-maple-syrup.jpg?s=612x612&w=0&k=20&c=8EctScsN7q5UmxeXPNBnYN1eFmJmgmp2bE0OIq_czwM=' },
            ],
            Lunch: [
                { name: 'Biriyani', price: 250, image: 'https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01.jpg' },
                { name: 'Ragi sangati', price: 300, image: 'https://i.ytimg.com/vi/eH4MhQhR7ag/maxresdefault.jpg' },
                { name: 'Bahubali thali', price: 1000, image: 'https://static.toiimg.com/photo/66099555.cms' },
            ],
            Dinner: [
                { name: 'Pizza', price: 450, image:'https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900'},
                { name: 'Fries and Burger', price: 600, image:'https://media.istockphoto.com/id/618630648/photo/homemade-cheese-smash-burger.jpg?s=612x612&w=0&k=20&c=OGgJ0M1_omgjTOrpz_uRt2S48BiHVUrGNg57Qc4ljuA='},
				{ name: 'Pizza', price: 450, image:'https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900'},
				{ name: 'Pizza', price: 450, image:'https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900'}
           ],s
        };

 const cart = [];
        const orders = [];

        function loadProducts(category) {
            const productPage = document.getElementById('productPage');
            const homePage = document.getElementById('homePage');
            homePage.style.display = 'none';
            productPage.style.display = 'block';
            productPage.innerHTML = '';
            products[category].forEach((product, index) => {
                productPage.innerHTML += `
                    <div class="product                    ">
                        <img src="${product.image}" alt="${product.name}">
                        <div class="details">
                            <h3>${product.name}</h3>
                            <p>Price: ₹${product.price.toLocaleString()}</p>
                        </div>
                        <div class="actions">
                            <button onclick="addToCart('${category}', ${index})">Add to Cart</button>
                            <button class="buy-now" onclick="buyNow('${category}', ${index})">Buy Now</button>
                        </div>
                    </div>
                `;
            });
        }

        function addToCart(category, index) {
            cart.push(products[category][index]);
            alert(`${products[category][index].name} added to cart.`);
        }

        function buyNow(category, index) {
            cart.push(products[category][index]);
            showCart();
            document.getElementById('orderForm').style.display = 'block';
            document.getElementById('cartPage').style.display = 'none';
        }

        function showCart() {
            const cartPage = document.getElementById('cartPage');
            const homePage = document.getElementById('homePage');
            const productPage = document.getElementById('productPage');
            const orderForm = document.getElementById('orderForm');
            const profilePage = document.getElementById('profilePage');
            homePage.style.display = 'none';
            productPage.style.display = 'none';
            orderForm.style.display = 'none';
            profilePage.style.display = 'none';
            cartPage.style.display = 'block';
            cartPage.innerHTML = '<h2>Your Cart</h2>';
            let total = 0;
            cart.forEach((item, index) => {
                total += item.price;
                cartPage.innerHTML += `
                    <div class="cart-item">
                        <img src="${item.image}" alt="${item.name}">
                        <div>${item.name}</div>
                        <div>₹${item.price.toLocaleString()}</div>
                        <div class="actions">
                            <button onclick="removeFromCart(${index})">Remove</button>
                        </div>
                    </div>
                `;
            });
            cartPage.innerHTML += `<h3>Total: ₹${total.toLocaleString()}</h3>`;
            cartPage.innerHTML += `<button onclick="checkout()">Proceed to Checkout</button>`;
        }

        function removeFromCart(index) {
            cart.splice(index, 1);
            showCart();
        }

        function checkout() {
            const cartPage = document.getElementById('cartPage');
            cartPage.style.display = 'none';
            const orderForm = document.getElementById('orderForm');
            orderForm.style.display = 'block';
            const total = cart.reduce((sum, item) => sum + item.price, 0);
            document.getElementById('orderTotal').textContent = `₹${total.toLocaleString()}`;
        }

        function placeOrder() {
            const phoneNumber = document.getElementById('phoneNumber').value;
            const address = document.getElementById('address').value;
            if (phoneNumber.length !== 10 || isNaN(phoneNumber)) {
                alert('Please enter a valid 10-digit phone number.');
                return;
            }
            if (address.trim() === '') {
                alert('Please enter your address.');
                return;
            }
            orders.push({ cart: [...cart], phoneNumber, address });
            alert('Order placed successfully!');
            cart.length = 0;
            document.getElementById('orderForm').style.display = 'none';
            document.getElementById('homePage').style.display = 'block';
        }

        function showProfile() {
            const profilePage = document.getElementById('profilePage');
            const homePage = document.getElementById('homePage');
            const cartPage = document.getElementById('cartPage');
            const productPage = document.getElementById('productPage');
            const orderForm = document.getElementById('orderForm');
            homePage.style.display = 'none';
            cartPage.style.display = 'none';
            productPage.style.display = 'none';
            orderForm.style.display = 'none';
            profilePage.style.display = 'block';
            const orderHistory = document.getElementById('orderHistory');
            orderHistory.innerHTML = '';
            orders.forEach((order, index) => {
                let orderDetails = `
                    <li>
                        <h3>Order ${index + 1}</h3>
                        <p>Phone: ${order.phoneNumber}</p>
                        <p>Address: ${order.address}</p>
                        <p>Items:</p>
                        <ul>
                `;
                order.cart.forEach(item => {
                    orderDetails += `<li>${item.name} - ₹${item.price.toLocaleString()}</li>`;
                });
                orderDetails += '</ul></li>';
                orderHistory.innerHTML += orderDetails;
            });
        }

        document.getElementById('home').addEventListener('click', () => {
            document.getElementById('homePage').style.display = 'block';
            document.getElementById('productPage').style.display = 'none';
            document.getElementById('cartPage').style.display = 'none';
            document.getElementById('orderForm').style.display = 'none';
            document.getElementById('profilePage').style.display = 'none';
        });

        document.getElementById('cart').addEventListener('click', showCart);
        document.getElementById('profile').addEventListener('click', showProfile);
   