<!DOCTYPE html>
<!-- #RAHUL -->
<html>
<head runat="server">
  <meta charset="utf-8">
  <!-- RAHUL --> 
  <title>Order Now Page</title>
  <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
  <link rel="stylesheet" href="css/WP_PROJECT_ORDERNOW.css">
  <style>
    /* Add the CSS styles here */
    /* Corrected CSS for centering the button */
    .submit-btn {
      display: block;
      margin: 0 auto;
      text-align: center;
    }
  </style>
</head>
<body>
  <header>
    <a href="LANDING_PAGE.aspx"><img id="top"src="images/logoWH.jpg"></a>
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

  <div class="container">
    <form id="form1" runat="server">
      <div class="row">
        <div class="col">
          <h3 class="title">Billing Address</h3>
          <div class="inputbox">
            <span>Email ID :</span>
            <input id="email" type="email" placeholder="example@example.com" required>
          </div>
          <!-- Other input fields for billing address -->
        </div>
        <div class="col">
          <h3 class="title">Payment</h3>
          <div class="inputbox">
            <span>Cards Accepted :</span>
            <img src="images/cards.jpg.png">
          </div>
          <!-- Other input fields for payment -->
        </div>
        <input type="submit" value="Proceed to Checkout" class="submit-btn">
      </div>
    </form>
    <p style="border: 2px solid red;" id="Message"></p>
  </div>

  <!-- JavaScript or additional scripts can be added here -->
  <script>
    // JavaScript code can be added here if needed
  </script>
</body>
</html>
