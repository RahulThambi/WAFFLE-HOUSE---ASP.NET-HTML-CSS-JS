<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>CONTACT US</title>
    <link rel="stylesheet" href="css/WP_PROJECT_CONTACTUS.css">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
    <link rel="icon" href="images/phone.jpg">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
    <header id="headcontact">
        <a href="LANDING_PAGE.aspx"><img id="top" src="images/logoWH.jpg"></a>
    </header>

    <nav id="navbar">
        <ul id="navcontent">
            <li><a href="WP_PROJECT_REVIEWS.aspx">REVIEWS</a></li>
            <li><a href="WP_PROJECT_ABOUT.aspx">ABOUT</a></li>
            <li><a href="addtocart.aspx">MENU</a></li>
            <li><a href="WP_PROJECT_CONTACTUS.aspx">CONTACT</a></li>
            <li><a href="WP_PROJECT_CHEFS.aspx">CHEFS</a></li>
        </ul>
    </nav>

    <div class="container">
        <div class="content">
            <div class="left-side">
                <div class="address details">
                    <i class="fas fa-map-marker-alt"></i>
                    <div class="topic">Address</div>
                    <div class="text-one">Shop number 4, Malad (west)</div>
                    <div class="text-two">Mumbai-400064</div>
                </div>
                <div class="phone details">
                    <i class="fas fa-phone-alt"></i>
                    <div class="topic">Phone</div>
                    <div class="text-one"><a href="tel:123456789">123456789</a></div>
                    <div class="text-two"><a href="tel:000012313323">0000 1231 3323</a></div>
                </div>
                <div class="email details">
                    <i class="fas fa-envelope"></i>
                    <div class="topic">Email</div>
                    <div class="text-one"><a href="mailto:wafflehouse@gmail.com">wafflehouse@gmail.com</a></div>
                </div>
            </div>
            <div class="right-side">
                <div class="topic-text">Send us a message</div>
                <p>Hello customers, if you have any kind of doubts, you can type here and send it to our email. We will look into it as soon as possible. Your review will be helpful for us.</p>
                <form id="form1" runat="server" name="myform" method="post" action="#" onsubmit="return validateemail();">
                    <div class="input-box">
                        <input type="text" placeholder="Enter your name" required>
                    </div>
                    <div class="input-box">
                        <input type="email" placeholder="Enter E-mail address" required name="email"><br/>
                    </div>
                    <div class="input-box message-box">
                        <textarea id="subject" name="subject" placeholder="Write something.." required style="height:80px"></textarea>
                    </div>
                    <div class="button">
                        <input type="submit" value="Send now">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function validateemail() {
            var x = document.myform.email.value;
            var atposition = x.indexOf("@");
            var dotposition = x.lastIndexOf(".");
            if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
                alert("Please enter a valid e-mail address \n atpostion:" + atposition + "\n dotposition:" + dotposition);
                return false;
            }
        }
    </script>
</body>
</html>
