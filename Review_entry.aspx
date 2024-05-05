<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review_Entry_Page.aspx.cs" Inherits="AWP_proj2.Review_Entry_Page" %>
 
<!DOCTYPE html>
<html lang="en">
<head runat="server">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Form</title>
<link rel="stylesheet" href="css/Review_Entry_Page.css">
</head>
<body>
<form id="form1" runat="server">
<h3>Feedback Form</h3>
<div class="form-box">
<div class="textup">
<i class="fa fa-solid fa-clock"></i> It only takes two minutes!!
</div>
<label for="uname">
<i class="fa fa-solid fa-user"></i> Name
</label>
<input type="text" id="uname" name="uname" required>
 
            <label for="email">
<i class="fa fa-solid fa-envelope"></i> Email Address
</label>
<input type="email" id="email" name="email" required>
 
            <label for="phone">
<i class="fa-solid fa-phone"></i> Phone No
</label>
<input type="tel" id="phone" name="phone" required>
 
            <label>
<i class="fa-solid fa-face-smile"></i> Do you satisfy with our service?
</label>
<div class="radio-group">
<input type="radio" id="yes" name="satisfy" value="yes" checked>
<label for="yes">Yes</label>
 
                <input type="radio" id="no" name="satisfy" value="no">
<label for="no">No</label>
</div>
 
            <label for="msg">
<i class="fa-solid fa-comments" style="margin-right: 3px;"></i> Write your Suggestions:
</label>
<asp:TextBox ID="msg" runat="server" Height="100px" Width="476px"></asp:TextBox>
&nbsp;<asp:Button ID="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
</div>
</form>
</body>
</html>