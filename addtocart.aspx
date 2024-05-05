<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add to Cart</title>
    <link rel="stylesheet" href="css/addtocart.css">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css">
    <link rel="icon" href="images/menu.jpg">
</head>
<body>

    <header>
        <a href="LANDING_PAGE.aspx"><img id="top" src="images/logoWH.jpg"></a>
    </header>

    <nav id="navbar">
        <ul id="navcontent">
            <li><a href="WP_PROJECT_REVIEWS.aspx">REVIEWS</a></li>
            <li><a href="WP_PROJECT_ABOUT.aspx">ABOUT</a></li>
            <li><a href="WP_PROJECT_MENU.aspx">MENU</a></li>
            <li><a href="WP_PROJECT_CONTACTUS.aspx">CONTACT US</a></li>
            <li><a href="WP_PROJECT_CHEFS.aspx">CHEFS</a></li>
            <li><a href="Pie_Chart.aspx">Most_Selling_Items</a></li>

        </ul>
    </nav>

    <div class="container">
        <header>
            <h1>Your Shopping Cart</h1>
            <div class="shopping">
                <img src="images/shopping.svg">
                <span class="quantity">0</span>
            </div>
        </header>

        <div class="list">
            <!-- Product items go here -->
            <!-- Sample item for demonstration -->
            <div class="item">
                <img src="images/1.PNG">
                <div class="title">Chocolate Waffle</div>
                <div class="price">120</div>
                <button type="button" onclick="addToCart(1, 'Chocolate Waffle')">Add To Cart</button>
            </div>
            <!-- Add more product items as needed -->
        </div>
    </div>

    <div class="card">
        <h1>Card</h1>
        <ul class="listCard">
            <!-- Cart items go here -->
        </ul>
        <div class="checkOut">
            <div class="total" onclick="openCheckout()">0</div>
            <div class="closeShopping" onclick="openCheckout()">Close</div>
        </div>
    </div>

    <script src="js/addtocart.js"></script>
    <script>
        // Function to open the Payment_gateway.aspx page with selected items data
        function openCheckout()
        {
            let selectedItems = listCards.filter(item => item.quantity > 0);
            let totalPrice = getTotalPrice();
            let params = new URLSearchParams();
            selectedItems.forEach(item => {
                params.append('productId', item.id);
                params.append('productName', item.name);
                params.append('quantity', item.quantity);
            });
            params.append('total', totalPrice);

            // Construct the URL with query parameters and redirect to Payment_gateway page
            window.location.href = `Payment_gateway.aspx?${params.toString()}`;
        }

        // Function to calculate the total price
        function getTotalPrice() {
            let totalPrice = 0;
            listCards.forEach(item => {
                totalPrice += item.price * item.quantity;
            });
            return totalPrice;
        }
    </script>
</body>
</html>
