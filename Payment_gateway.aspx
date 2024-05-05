<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment_gateway.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.Payment_gateway" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css">
    <link rel="icon" href="images/menu.jpg">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Payment Gateway</title>
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css">
    <link rel="icon" href="images/menu.jpg">
    <style>
        body {
            font-family: Arial;
            font-size: 17px;
            padding: 8px;
        }

        * {
            box-sizing: border-box;
        }

        .row {
            display: -ms-flexbox; /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap; /* IE10 */
            flex-wrap: wrap;
            margin: 0 -16px;
        }

        .col-25 {
            -ms-flex: 25%; /* IE10 */
            flex: 25%;
        }

        .col-50 {
            -ms-flex: 50%; /* IE10 */
            flex: 50%;
        }

        .col-75 {
            -ms-flex: 75%; /* IE10 */
            flex: 75%;
        }

        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }

        input[type=text] {
            width: 100%;
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        label {
            margin-bottom: 10px;
            display: block;
        }

        .btn {
            background-color: #04AA6D;
            color: white;
            padding: 12px;
            margin: 10px 0;
            border: none;
            width: 100%;
            border-radius: 3px;
            cursor: pointer;
            font-size: 17px;
        }
        .btn {
    display: block; /* Added to make the button a block element */
    margin: 0 auto; /* Added to center the button horizontally */
    text-align: center; /* Added to center the text inside the button */
}


        .btn:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
        }

        hr {
            border: 1px solid lightgrey;
        }

        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }
    </style>
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
        </ul>
    </nav>

    <form id="form1" runat="server" onsubmit="return validateForm()">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <div class="row">
                        <div class="col-50">
                            <br />
                            <h3>Billing Address</h3>
                            <br />
                            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                            <input type="text" id="fname" name="firstname" placeholder="John M. Doe">
                            <label for="email"><i class="fa fa-envelope"></i> Email</label>
                            <input type="text" id="email" name="email" placeholder="john@example.com">
                            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
                            <label for="city"><i class="fa fa-institution"></i> City</label>
                            <input type="text" id="city" name="city" placeholder="New York">
                            <div class="row">
                                <div class="col-50">
                                    <label for="state">State</label>
                                    <input type="text" id="state" name="state" placeholder="NY">
                                </div>
                                <div class="col-50">
                                    <label for="zip">Zip</label>
                                    <input type="text" id="zip" name="zip" placeholder="10001">
                                </div>
                            </div>
                        </div>
                        <div class="col-50">
                            <br />
                            <h3>Payment</h3>
                            <br />
                            <label                             for="cname">Name on Card</label>
                            <input type="text" id="cname" name="cardname" placeholder="John More Doe">
                            <label for="ccnum">Credit card number</label>
                            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                            <label for="expmonth">Exp Month</label>
                            <input type="text" id="expmonth" name="expmonth" placeholder="September">
                            <div class="row">
                                <div class="col-50">
                                    <label for="expyear">Exp Year</label>
                                    <input type="text" id="expyear" name="expyear" placeholder="2018">
                                </div>
                                <div class="col-50">
                                    <label for="cvv">CVV</label>
                                    <input type="text" id="cvv" name="cvv" placeholder="352">
                                </div>
                            </div>
                        </div>
                    </div>
                    <label>
                        <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
                    </label>
                    <!-- <input type="submit" class="btn" value="Click to confirm order">-->
                    <!-- <a  style="text-decoration:none" class="btn"href="greetings.aspx">Click to confirm order</a> -->
                   <a href="new-invoice.aspx" style="text-decoration:none" class="btn" onclick="return validateForm()">Click to confirm order</a>

                </div>
            </div>

            <div class="col-25">
                <div class="container">
                    <br />
                    <!-- Replace the existing h4 tag with the code snippet -->
                    <p>Cart <span id="cartQuantity" class="price" style="color: black"><i class="fa fa-shopping-cart"></i> <b>0</b></span></p>
                    <br />
                    <hr>
                    <p>Total <span id="totalAmount" class="price" style="color:black"></span></p>
                </div>
            </div>
        </div>
    </form>


    <!-- Add this script block at the end of your HTML body -->
    <script>
        function validateForm() {
            const fname = document.getElementById('fname').value;
            const email = document.getElementById('email').value;
            const adr = document.getElementById('adr').value;
            const city = document.getElementById('city').value;
            const state = document.getElementById('state').value;
            const zip = document.getElementById('zip').value;
            const cname = document.getElementById('cname').value;
            const ccnum = document.getElementById('ccnum').value;
            const expmonth = document.getElementById('expmonth').value;
            const expyear = document.getElementById('expyear').value;
            const cvv = document.getElementById('cvv').value;

            // Check if any of the fields are empty
            if (fname === '' || email === '' || adr === '' || city === '' || state === '' || zip === '' ||
                cname === '' || ccnum === '' || expmonth === '' || expyear === '' || cvv === '') {
                alert('Please fill out all fields.');
                return false;
            }

            // Validate full name using regex
            if (!/^[A-Za-z\s]+$/.test(fname)) {
                alert('Invalid full name. Please use alphabets and spaces only.');
                return false;
            }

            // Validate email format using regex
            if (!/\S+@\S+\.\S+/.test(email)) {
                alert('Invalid email format. Please enter a valid email address.');
                return false;
            }

            // Validate address (assuming it should not be empty)
            if (adr.trim() === '') {
                alert('Please enter your address.');
                return false;
            }

            // Validate city (assuming it should not be empty)
            if (city.trim() === '') {
                alert('Please enter your city.');
                return false;
            }

            // Validate state (assuming it should not be empty)
            if (state.trim() === '') {
                alert('Please enter your state.');
                return false;
            }

            // Validate zip code (assuming it should be numeric and 5 digits long)
            if (!/^\d{6}$/.test(zip)) {
                alert('Invalid zip code format. Please enter a 5-digit numeric zip code.');
                return false;
            }

            // Validate credit card number (assuming it should be numeric and 16 digits long)
            if (!/^\d{16}$/.test(ccnum)) {
                alert('Invalid credit card number format. Please enter a 16-digit numeric card number.');
                return false;
            }

            // Validate card expiration month (assuming it should be a valid month name)
            const validMonths = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
            if (!validMonths.includes(expmonth)) {
                alert('Invalid expiration month. Please enter a valid month name.');
                return false;
            }

            // Validate card expiration year (assuming it should be a 4-digit number)
            if (!/^\d{4}$/.test(expyear)) {
                alert('Invalid expiration year format. Please enter a 4-digit numeric year.');
                return false;
            }

            // Validate CVV (assuming it should be numeric and 3 digits long)
            if (!/^\d{3}$/.test(cvv)) {
                alert('Invalid CVV format. Please enter a 3-digit numeric CVV.');
                return false;
            }

            // Return true only if all validations pass
            return true;
        }


        
        

            // Function to get the total price and quantity from the URL parameter
        function getDataFromURL()
        {
                const urlParams = new URLSearchParams(window.location.search);
                const totalPrice = urlParams.get('total');
                const cartQuantity = urlParams.get('quantity'); // Assuming 'quantity' is the parameter name for quantity
                return { totalPrice, cartQuantity };
            }

            // Function to update the total price and quantity on the page
        function updateData()
        {
                const { totalPrice, cartQuantity } = getDataFromURL();
                const totalAmountElement = document.getElementById('totalAmount');
                const cartQuantityElement = document.getElementById('cartQuantity');

                if (totalPrice) {
                    totalAmountElement.textContent = 'Rs' + totalPrice;
                }

                if (cartQuantity) {
                    cartQuantityElement.textContent = cartQuantity;
                }
        }

        function redirectToGreetings()
        {
            window.location.href = 'new-invoice.aspx'; // Replace 'greetings.aspx' with the actual URL of your greetings page
        }

            // Call the function to update the total price and quantity when the page loads
            window.onload = function () {
                updateData();
            };
    </script>
</body>
</html>
