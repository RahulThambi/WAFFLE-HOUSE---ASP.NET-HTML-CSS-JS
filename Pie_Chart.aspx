<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pie_Chart.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.Pie_Chart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style>
        /* Chart Container */
        #Chart1 {
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        /* Center the Chart Container */
        .chartContainer {
            margin: 0 auto;
        }

        /* Chart Title */
        .chartTitle {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-bottom: 10px;
        }

        /* Legend */
        .legend {
            font-size: 14px;
            color: #555;
            text-align: center;
        }

        /* Chart Area */
        .chartArea {
            background-color: #fff;
        }

        /* Pie Slice Labels */
        .pieLabel {
            font-size: 12px;
            font-weight: bold;
            color: #333;
        }

        /* Huge Title */
        .hugeTitle {
            font-size: 36px;
            font-weight: bold;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Button */
        .btn {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div style="background-color: #f2f2f2; padding: 20px; border-radius: 10px;">
            <h1 class="hugeTitle">Our Top Selling Items This Month</h1>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="400px" Width="600px" CssClass="chartContainer">
                <Series>
                    <asp:Series ChartType="Pie" Name="Series1" XValueMember="food" YValueMembers="qty" IsValueShownAsLabel="True" Legend="Legend1">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Name="Legend1" Title="FOOD ITEMS">
                    </asp:Legend>
                </Legends>
            </asp:Chart>
            <a href="addtocart.aspx" class="btn">Go to Menu</a>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [food], [qty] FROM [likes]"></asp:SqlDataSource>
    </form>
</body>

</html>