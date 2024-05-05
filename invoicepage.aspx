<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoicepage.aspx.cs" Inherits="AWP_PROJECT_WAFFLE_HOUSE.invoicepage" %>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>Invoice</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Add custom styles for the invoice */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .invoice-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .invoice-header h2 {
            margin: 0;
            color: #333;
        }

        .invoice-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        .invoice-table th,
        .invoice-table td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        .invoice-total {
            display: flex;
            justify-content: flex-end;
        }

        .invoice-total p {
            margin: 5px 0;
        }

        .btn-download {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-download:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="invoice-header">
            <h2>Invoice</h2>
            <button id="btnDownload" class="btn-download">Download PDF</button>
        </div>
        <table class="invoice-table">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dynamically populate invoice items here -->
                <tr>
                    <td>Product A</td>
                    <td>2</td>
                    <td>$50</td>
                </tr>
                <tr>
                    <td>Product B</td>
                    <td>1</td>
                    <td>$30</td>
                </tr>
            </tbody>
        </table>
        <div class="invoice-total">
            <p>Total: $130</p>
        </div>
    </div>

    <!-- Include the necessary scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <script>
        document.getElementById('btnDownload').addEventListener('click', () => {
            const invoiceContainer = document.querySelector('.container');
            if (invoiceContainer) {
                html2canvas(invoiceContainer).then(canvas => {
                    const imgData = canvas.toDataURL('image/png');
                    const pdf = new jsPDF();
                    pdf.addImage(imgData, 'PNG', 0, 0);
                    pdf.save('invoice.pdf');
                }).catch(error => {
                    console.error('Error generating PDF:', error);
                });
            } else {
                console.error('Invoice container not found.');
            }
        });
    </script>
        </form>
</body>
</html>
