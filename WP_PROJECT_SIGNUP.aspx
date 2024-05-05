<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WP_PROJECT_SIGNUP.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.WP_PROJECT_SIGNUP" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up Page</title>
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

        .btn-signup,
        .btn-login {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn-login {
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
            <h2 style="text-align: center;">Sign Up</h2>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter email" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter password" ValidationGroup="SignUp"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" CssClass="btn-signup" ValidationGroup="SignUp" OnClick="btnSignUp_Click" />
            <asp:Label ID="Label1" runat="server" Text="Successfully signed up" Visible="False"></asp:Label>
            <asp:Button ID="btnLogin" runat="server" Text="Already a member? Login" CssClass="btn-login" OnClick="btnLogin_Click" />
        </div>
    <div class="social-icons">
        <a href="https://your-instagram-profile-link"><img src="images/instagramlogo.jpg.png" alt="Instagram"></a>
        <a href="https://your-twitter-profile-link"><img src="images/twitterlogo.jpg.png" alt="Twitter"></a>
        <a href="https://your-facebook-profile-link"><img src="images/facebooklogo.jpg.png" alt="Facebook"></a>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [emp]"></asp:SqlDataSource>
    </form>
    </body>
</html>
