<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_REVIEWS.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_REVIEWS" %>



<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reviews</title>

    <link
    rel="stylesheet"
    href="https://unpkg.com/swiper@7/swiper-bundle.min.css"
    />
    <link rel="stylesheet" href="css/WP_PROJECT_REVIEWS.css">
    <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
       <link rel="icon"  href="images/review.jpg">

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
            <h2 class="text-light">Word form our customers</h2>
            <p class="text-light">Some of the fullfilled costomers reviews</p>

            <!-- Slider main container -->
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                            One of the best Waffles I have had, helped me during one of the most strenous and difficult phases of my life, Waffle House is one of the reasons that led to the founding of FaceBook.
                        </div>
                        <div class="profile">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg/1200px-Mark_Zuckerberg_at_the_37th_G8_Summit_in_Deauville_018_v1.jpg" alt="">
                            <a href="https://en.wikipedia.org/wiki/Mark_Zuckerberg">Mark Zuckerburg</a>
                            <span>Founder Of FaceBook</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                            Waffle House has Some great Savoury waffles. My go to place before I take my car for a lovely spin on the footpath.
                         </div>
                        <div class="profile">
                            <img src="https://m.media-amazon.com/images/M/MV5BMjMwNTIxODg0OF5BMl5BanBnXkFtZTgwODg2NzM0OTE@._V1_.jpg" alt="">
                            <a href="https://www.bing.com/ck/a?!&&p=0488dd7c7687fa6fJmltdHM9MTY2NTg3ODQwMCZpZ3VpZD0xNzllYzc2Ny1kMTQxLTY5ZWYtMzU2NC1kNTRkZDBkYTY4YWQmaW5zaWQ9NTIxMQ&ptn=3&hsh=3&fclid=179ec767-d141-69ef-3564-d54dd0da68ad&psq=SALMAN+KHASN+WIKI&u=a1aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvU2FsbWFuX0toYW4&ntb=1">Salman Khan</a>
                            <span>Actor & Celebrity</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="flex">
                        <div class="comments">
                           Waffle House Hazelnut waffles are my favourite dish to pair with kingfisher. It was while i was at waffle house that the idea of Kingfisher came to me. I was at waffle House when I had my last meal in India. Now I enjoy at the UK branch of Waffle House.
                        </div>
                        <div class="profile">
                            <img src="https://m.economictimes.com/thumb/msid-70404726,width-1200,height-900,resizemode-4,imgsize-583847/vijay-mallya-case-its-retired-indian-judge-vs-judge.jpg" alt="">
                            <a href="https://en.wikipedia.org/wiki/Vijay_Mallya">Vijay Mallya</a>
                            <span>Founder Of Kingfisher</span>
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