<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="greetings.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.greetings" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
    <style>
        @import url(//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.1/normalize.min.css);
        @import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);

        /* Animation keyframes */
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Apply animation to elements */
        .site-header__title,
        .main-content__checkmark,
        .main-content__body,
        .site-footer__fineprint {
            animation: fadeIn 1s ease-in-out forwards;
            opacity: 0; /* Start with opacity 0 to trigger the animation */
        }
    </style>
    <link rel="stylesheet" href="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/default_thank_you.css">
    <script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/jquery-1.9.1.min.js"></script>
    <script src="https://2-22-4-dot-lead-pages.appspot.com/static/lp918/min/html5shiv.js"></script>
    <script>
        // Function to redirect back to landingpage.aspx after 5 seconds
        setTimeout(function () {
            window.location.href = 'LANDING_PAGE.aspx'; // Replace 'landingpage.aspx' with the actual URL of your landing page
        }, 5000); // 5000 milliseconds = 5 seconds

        // Wait for the document to be fully loaded
        $(document).ready(function () {
            // Add the animation class to elements after a short delay (e.g., 500 milliseconds)
            setTimeout(function () {
                $('.site-header__title, .main-content__checkmark, .main-content__body, .site-footer__fineprint').css('opacity', '1');
            }, 500);
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <header class="site-header" id="header">
            <h1 class="site-header__title" data-lead-id="site-header-title">THANK YOU!</h1>
        </header>

        <div class="main-content">
            <i class="fa fa-check main-content__checkmark" id="checkmark"></i>
            <p class="main-content__body" data-lead-id="main-content-body">Thanks a bunch for ordering from Waffle House. It means a lot to us, just like you do! Please leave us a review and feedback so that we can further enhance our customers experience!</p>
        </div>

        <footer class="site-footer" id="footer">
            <p class="site-footer__fineprint" id="fineprint">Copyright ©2024 | A project by Rahul Thambi</p>
        </footer>
    </form>
</body>
</html>
