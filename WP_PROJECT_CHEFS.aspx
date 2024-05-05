<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_CHEFS.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_CHEFS" %>





<!DOCTYPE html>
<html lang="en">
<head  runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chefs</title>

    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="css/WP_PROJECT_REVIEWS.css">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
    <link rel="icon"  href="images/chefshat.jpg">

</head>
<body>
        <form id="form1" runat="server">

	
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


    <div class="container">
        <div class="board">
            <h2 class="text-light">OUR WORDCLASS CHEFS</h2>
            <p class="text-light">A little something about our chefs</p>

            <!-- Slider main container -->
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                           Chef Jesse’s signature recipes are rooted in familial Southern tradition with a modern twist of French culinary technique
                        </div>
                        <div class="profile">
                            <img src="images/Vicky.jpg" alt="">
                            <a href="https://en.wikipedia.org/wiki/Mark_Zuckerberg">Chef Jesse's</a>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                            Vikas Khanna (born 14 November 1971) is an Indian chef, restaurateur, cookbook writer, filmmaker and humanitarian. He is one of the judges of Star Plus series MasterChef India
                         </div>
                        <div class="profile">
                            <img src="images/Vineet.jpg" alt="">
                            <a href="https://www.bing.com/ck/a?!&&p=0488dd7c7687fa6fJmltdHM9MTY2NTg3ODQwMCZpZ3VpZD0xNzllYzc2Ny1kMTQxLTY5ZWYtMzU2NC1kNTRkZDBkYTY4YWQmaW5zaWQ9NTIxMQ&ptn=3&hsh=3&fclid=179ec767-d141-69ef-3564-d54dd0da68ad&psq=SALMAN+KHASN+WIKI&u=a1aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvU2FsbWFuX0toYW4&ntb=1">Vikas Khanna</a>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                      vinnet bhati  he was the first Indian chef to have received 2 Michelin stars. He owns 11 restaurants which includes one in the upscale Harrods in London
                        </div>
                        <div class="profile">
                            <img src="images/Vkhanna.jpg" alt="">
                            <a href="https://en.wikipedia.org/wiki/Vijay_Mallya">Vineet Bhati</a>
                            <span></span>
                        </div>
                    </div>
                </div>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>

                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>

            </div>

        </div>
    </div>

    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
    <script src="js/main.js"></script>
            </form>
</body>
</html>