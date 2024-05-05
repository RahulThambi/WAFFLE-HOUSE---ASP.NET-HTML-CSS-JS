﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chatbot.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.chatbot" %>


<!DOCTYPE html>
<html lang="en">

<head runat="server">


    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
        <link rel="stylesheet" href="css/WP_PROJECT_LANDING.css"> 
       <link rel="icon"  href="logoWH.jpg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="og:site_name" content="View Varshith's Portfolio Website">
    <meta property="og:title" content="Developer | Varshith" />
    <meta property="og:description"
        content="Hello there 👋🏻,My name is BaozakedKichu.I am a ChatBot at Waffle House!.Send 'help' to know more about waffle house." />
    <meta property="og:type" content="website" />

    <meta property="og:type" content="website" />
    <meta property="og:image:type" content="image/jpeg">

    <link rel="icon" type="image/png" href="images/favicon.ico" />
    <meta property="og:image:width" content="300">
    <meta property="og:image:height" content="300">
    <meta property="og:updated_time" content="1440432930" />

    <title>Rahul Thambi | ChatBot </title>
</head>

<body onload="startFunction()">

    <br /><br />
        <form id="form1" runat="server">
                <header>
       <a href="LANDING_PAGE.aspx"><img id="top"src="images/logoWH.jpg" ></a>
    </header>
            <br /><br />

            <div id="chatbotButton" class="chatbot-btn">
            <svg onclick="toggleChatbot()" viewBox="0 0 24 24" width="24" height="24" class="chatbot-icon">
                <path fill="currentColor"
                    d="M12 2C6.5 2 2 6.5 2 12s4.5 10 10 10 10-4.5 10-10S17.5 2 12 2zm3 15h-6v-1h6v1zm2-4H7v-1h10v1zm0-4H7V8h10v1z"></path>
            </svg>
        </div>


  

    <nav>

        <div class="navbar">
            <img class="dpimg" onclick="openFullScreenDP()" src="images/varshi1.jpg" alt="">
            <div class="personalInfo">
                <label id="name">Rahul Thambi</label>
                <label id="lastseen">last seen today at 3:24 pms</label>
            </div>
        </div>

    </nav>


    <div class="scrollable" id="myScrollable">

        <div class="fullScreenDP" id="fullScreenDP">
            <div class="insideDP">
                <img class="dp" src="images/varshi1.jpg" alt="">
                <svg class="closeBTN" onclick="closeFullDP()" xmlns="http://www.w3.org/2000/svg" width="64px"
                    viewBox="0 0 512 512" height="64px">
                    <path class="btnColor" fill="#E04F5F"
                        d="M504.1,256C504.1,119,393,7.9,256,7.9C119,7.9,7.9,119,7.9,256C7.9,393,119,504.1,256,504.1C393,504.1,504.1,393,504.1,256z" />
                    <path fill="#FFF"
                        d="M285,256l72.5-84.2c7.9-9.2,6.9-23-2.3-31c-9.2-7.9-23-6.9-30.9,2.3L256,222.4l-68.2-79.2c-7.9-9.2-21.8-10.2-31-2.3c-9.2,7.9-10.2,21.8-2.3,31L227,256l-72.5,84.2c-7.9,9.2-6.9,23,2.3,31c4.1,3.6,9.2,5.3,14.3,5.3c6.2,0,12.3-2.6,16.6-7.6l68.2-79.2l68.2,79.2c4.3,5,10.5,7.6,16.6,7.6c5.1,0,10.2-1.7,14.3-5.3c9.2-7.9,10.2-21.8,2.3-31L285,256z" />
                </svg>
            </div>
        </div>

        <div id="chatting" class="chatting">
            <ul id="listUL">
            </ul>
        </div>
    </div>


    <footer>
        <div class="sendBar">
            <input id="inputMSG" onkeypress="isEnter(event)" type="text" placeholder="Type a message" autofocus>
            <svg onclick="sendMsg()" viewBox="0 0 24 24" width="24" height="24" class="">
                <path fill="currentColor"
                    d="M1.101 21.757 23.8 12.028 1.101 2.3l.011 7.912 13.623 1.816-13.623 1.817-.011 7.912z"></path>
            </svg>
        </div>
    </footer>
            </form>

</body>

</html>



