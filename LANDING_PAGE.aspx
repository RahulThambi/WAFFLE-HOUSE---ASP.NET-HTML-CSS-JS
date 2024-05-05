<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LANDING_PAGE.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.LANDING_PAGE" %>

<!DOCTYPE html>
<html lang="en"> 
<head runat="server">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
    <link rel="icon" href="logoWH.jpg">
    <style>
        /* Styling for the chatbot button */
        .chatbot-btn {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
            cursor: pointer;
        }

        .chatbot-icon {
            width: 50px;
            height: 50px;
            fill: #fff; /* Adjust the color as needed */
            background-color: #333; /* Adjust the background color as needed */
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-color 0.3s ease;
        }

        .chatbot-icon:hover {
            background-color: #555; /* Adjust the hover color as needed */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <a href="LANDING_PAGE.aspx"><img id="top" src="images/logoWH.jpg"></a>
        </header>

    <nav id="navbar">
        <ul id="navcontent">
            <li><a href="WP_PROJECT_REVIEWS.aspx">REVIEWS</a></li>
            <li><a href="WP_PROJECT_ABOUT.aspx">ABOUT</a></li>
            <li><a href="addtocart.aspx">MENU</a></li>
            <li><a href="WP_PROJECT_CONTACTUS.aspx">CONTACT US</a></li>
            <li><a href="WP_PROJECT_CHEFS.aspx">CHEFS</a></li>
            <li><a href="google_maps.aspx">NAVIGATE</a></li>
        </ul>
    </nav>

    <div id="container1">

        <div id="container3">
            <div id="row2">
                 <a href="WP_PROJECT_PRICING.aspx" class="btn"style="text-decoration: none;">Members</a>
                
            </div>
            <div id="row3">
                <a href="WP_PROJECT_DEALS.aspx" class="btn"style="text-decoration: none;">Deals</a>
            </div>
        </div>
          <a href="Review_entry.aspx" class="btn"style="text-decoration: none;">FEEDBACK/REVIEW</a>


    </div>
    <h1 id="top3">Featured Products</h1>

    <div id="container4">
        <div id="row4">
            <a href="addtocart.aspx" class="btn" style="text-decoration: none;">WAFFLES</a>
        </div>
        <div id="row5">
            <a href="addtocart.aspx" class="btn"style="text-decoration: none;">DRINKS</a>
        </div>
        <div id="row6">
            <a href="addtocart.aspx" class="btn"style="text-decoration: none;">SIDES<</a>
        </div>
    </div>
    <footer>
    <div id="footer" align="center">
<a href="https://www.instagram.com/" ><img src="images/instagramlogo.jpg.png" height="30px"></a>
<a href="https://facebook.com/" ><img src="images/facebooklogo.jpg.png" height="30px"></a>
<a href="https://twitter.com/" ><img src="images/twitterlogo.jpg.png" height="30px"></a>
</div>
<font color="red"><marquee>Check out our socials for further updates!</marquee></font>
    </footer>
          <div id="chatbotButton" class="chatbot-btn" onclick="openChatbox()">
            <svg viewBox="0 0 24 24" width="24" height="24" class="chatbot-icon">
                <path fill="currentColor" d="M12 2C6.5 2 2 6.5 2 12s4.5 10 10 10 10-4.5 10-10S17.5 2 12 2zm3 15h-6v-1h6v1zm2-4H7v-1h10v1zm0-4H7V8h10v1z"></path>
            </svg>
        </div>
    </form>

    <script>
        function openChatbox() {
            window.location.href = 'chatbot.aspx';
        }
    </script>
</body>
</html>