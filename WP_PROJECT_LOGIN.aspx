<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_LOGIN.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_LOGIN" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            background-color: goldenrod;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-login,
        .btn-signup {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-signup {
            background-color: #555;
        }

        .social-icons {
            text-align: center;
            margin-top: 20px;
        }

        .social-icons img {
            width: 40px;
            height: 40px;
            margin: 0 10px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 style="text-align: center;">Login</h2>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
            <asp:Button ID="btnSignup" runat="server" Text="New User? Sign Up" CssClass="btn-signup" OnClick="btnSignup_Click" />
        </div>
    </form>

    <div class="social-icons">
        <a href="https://your-instagram-profile-link"><img src="images/instagramlogo.jpg.png"
" alt="Instagram"></a>
        <a href="https://your-twitter-profile-link"><img src="images/twitterlogo.jpg.png
" alt="Twitter"></a>
        <a href="https://your-facebook-profile-link"><img src="images/facebooklogo.jpg.png" alt="Facebook"></a>
    </div>
</body>
</html>