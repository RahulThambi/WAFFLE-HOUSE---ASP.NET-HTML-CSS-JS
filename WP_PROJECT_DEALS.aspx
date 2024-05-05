<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_DEALS.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_DEALS" %>


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
        <h2>DEALS</h2>
        <div class="price-row">
            <div class="price-col">
                <p><img src="images/shakes.jpg"></p>
                <h3>250Rs <span>/average
                          </span></h3>
                <ul>
                    <li>1. Buy any two chocolate shakes @ just 150</li>
                    <li>2. Buy any two chocolate shakes @ just 250</li>
                    <li>3. Buy 2 chocolate shakes and gegt a classic shake free</li>
                    <li>4. Get a combination of classic, chocolate and double shakes at just 420</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">
                <button>Buy Now</button></a>
            </div>
            <div class="price-col">
                <p><img src="images/new.jpg"></p>
                <h3>150 Rs <span>/average</span></h3>
                <ul>
                    <li>1. Buy any two chocolate waffles @ just 130.
                    </li>
                    <li>2. Buy any 2 Double chocolate waffles @ just 250 </li>
                    <li>3. Buy any 2 classic waffles @ just 100</li>
                    <li>On large belgian chocolate waffle get a classic waffle free</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">
                <button>Buy Now</button></a>
            </div>
            <div class="price-col">
                <p><img src="images/appetizer.jpg"></p>
                <h3>200 Rs <span>/average</span></h3>
                <ul>
                    <li>1. Buy anjy two appetizers at just 120</li>
                    <li>Buy any two cheese garlic breads at just 5000</li>
                    <li>Buy white pasta and get a garlic bread free with a house</li>
                    <li>Buy any 3 appetizers at just 20</li>
                </ul>
                <a href="WP_PROJECT_ORDERNOW.html">
                <button>Buy Now</button></a>
            </div>
        </div>
    </div>
          </form>
</body>
  
</html>