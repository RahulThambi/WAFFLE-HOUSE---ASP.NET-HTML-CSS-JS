<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_PRICING.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_PRICING" %>

<!DOCTYPE html>
<html>
  
<head runat="server">
    <title>
        Pricing Chart
    </title>
      
    <link rel="stylesheet" href="css/WP_PROJECT_PRICING.css">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
</head>
 
    <header>
       <a href="LANDING_PAGE.aspx"><img id="top"src="images/logoWH.jpg" ></a>
    </header>

    <nav id="navbar">
        <ul id="navcontent">
            <li><a href="WP_PROJECT_REVIEWS.aspx">REVIEWS</a></li>
            <li><a href="WP_PROJECT_ABOUT.aspx">ABOUT</a></li>
            <li><a href="addtocart.aspx">MENU</a></li>
            <li><a href="WP_PROJECT_CONTACTUS.aspx">CONTACT US</a></li>
            <li><a href="WP_PROJECT_CHEFS.aspx">CHEFS</a></li>
        </ul>
    </nav> 
<body>
        <form id="form1" runat="server">

    <div class="container">
        <h2>PRICES OF OUR PRODUCTS FOR MEMBERS</h2>
        <div class="price-row">
            <div class="price-col">
                <p>WAFFLES</p>
                <h3>250Rs <span>/average</span></h3>
                <ul>
                    <li>chocolate</li>
                    <li>vanilla</li>
                    <li>strawberry</li>
                    <li>blueberry</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">Buy Now</a>
            </div>
            <div class="price-col">
                <p>DRINKS</p>
                <h3>150 Rs <span>/average</span></h3>
                <ul>
                    <li>jeeru masala</li>
                    <li>smoothies</li>
                    <li>shakes</li>
                    <li>mocktails</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">Buy Now</a>
            </div>
            <div class="price-col">
                <p>SIDES</p>
                <h3>200 Rs <span>/average</span></h3>
                <ul>
                    <li>Breadsticks</li>
                    <li>Garlic Bread</li>
                    <li>Pizza</li>
                    <li>Mozarrela</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">Buy Now</a>
            </div>
        </div>
    </div>
            </form>
              

</body>
  
</html>