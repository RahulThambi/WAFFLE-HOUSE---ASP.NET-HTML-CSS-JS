<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="new-invoice.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.new_invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />

    <title>Editable Invoice</title>

    <link rel='stylesheet' type='text/css' href='css/style2.css' />
    <link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
    <script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
    <script type='text/javascript' src='js/example.js'></script>

    <style>
        /* Style for the "Click to Print" button */
        button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        /* Style for the "Continue" link */
        .btn {
            background-color: #008CBA;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>

</head>

<body>
    <form id="form1" runat="server">

        <div id="page-wrap">

            <textarea id="header">INVOICE</textarea>

            <div id="identity">

                <textarea id="address">Chris Coyier
123 Appleseed Street
Appleville, WI 53719

Phone: (555) 555-5555</textarea>

                <div id="logo">

                    <div id="logoctr">
                        <a href="javascript:;" id="change-logo" title="Change logo">Change Logo</a>
                        <a href="javascript:;" id="save-logo" title="Save changes">Save</a>
                        |
                        <a href="javascript:;" id="delete-logo" title="Delete logo">Delete Logo</a>
                        <a href="javascript:;" id="cancel-logo" title="Cancel changes">Cancel</a>
                    </div>

                    <div id="logohelp">
                        <input id="imageloc" type="text" size="50" value="" /><br />
                        (max width: 540px, max height: 100px)
                    </div>
                    <img id="image" src="images/logoWH.jpg" alt="logo" style="height: 50px;" />

                </div>

            </div>

            <div style="clear:both"></div>

            <div id="customer">

                <textarea id="customer-title">Widget Corp.
c/o Steve Widget</textarea>

                <table id="meta" style="height: 363px">
                    <tr>
                        <td class="meta-head">Invoice #</td>
                        <td><textarea>000123</textarea></td>
                    </tr>
                    <tr>

                        <td class="meta-head">Date</td>
                        <td>
                            <asp:Calendar ID="Calendar1" runat="server" Height="57px" Width="91px"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td class="meta-head">Amount Due</td>
                        <td><div class="due">Rs325.00</div></td>
                    </tr>

                </table>

            </div>

            <table id="items">

                <tr>
                    <th>Item</th>
                    <th>Description</th>
                    <th>Unit Cost</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>

                <tr class="item-row">
                    <td class="item-name">
                        <div class="delete-wpr"><textarea>Belgian Waffles</textarea><a class="delete" href="javascript:;" title="Remove row">X</a></div>
                    </td>
                    <td class="description"><textarea>A light airy delectable waffle with smooth and delicious belgian cholocolate with a side of whipped cream</textarea></td>
                    <td><textarea class="cost">Rs200.00</textarea></td>
                    <td><textarea class="qty">1</textarea></td>
                    <td><span class="price">Rs200.00</span></td>
                </tr>

                <tr class="item-row">
                    <td class="item-name">
                        <div class="delete-wpr"><textarea>Fries</textarea><a class="delete" href="javascript:;" title="Remove row">X</a></div>
                    </td>

                    <td class="description"><textarea>Crispy and soft salted fries to help your soul.</textarea></td>
                    <td><textarea class="cost">Rs100.00</textarea></td>
                    <td><textarea class="qty">1</textarea></td>
                    <td><span class="price">Rs100.00</span></td>
                </tr>

                <tr id="hiderow">
                    <td colspan="5"><a id="addrow" href="javascript:;" title="Add a row">Add a row</a></td>
                </tr>

                <tr>
                    <td colspan="2" class="blank"> </td>
                    <td colspan="2" class="total-line">Subtotal</td>
                    <td class="total-value"><div id="subtotal">Rs300.00</div></td>
                </tr>
                <tr>

                    <td colspan="2" class="blank"> </td>
                    <td colspan="2" class="total-line">Total</td>
                    <td class="total-value"><div id="total">Rs325.00</div></td>
                </tr>
                <tr>
                    <td colspan="2" class="blank"> </td>
                    <td colspan="2" class="total-line">Amount Paid</td>

                    <td class="total-value"><textarea id="paid">Rs0.00</textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="blank"> </td>
                    <td colspan="2" class="total-line balance">Balance Due</td>
                    <td class="total-value balance"><div class="due">Rs325.00</div></td>
                </tr>

            </table>

            <div id="terms">
                <h5>Terms</h5>
                <textarea>NET 30 Days. Finance Charge of 1.5% will be made on unpaid balances after 30 days.

                </textarea>
                <button onclick="window.print()">Click to Print</button>
                <a href="greetings.aspx" style="text-decoration:none" class="btn" onclick="return validateForm()">Continue</a>
            </div>

        </div>
    </form>

</body>

</html>