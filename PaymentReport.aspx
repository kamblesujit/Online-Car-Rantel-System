﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaymentReport.aspx.cs" Inherits="PaymentReport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Car Rental System</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
    <link href="css/socialmediaicon.css" rel="stylesheet" type="text/css" />
    <link href="css/fontawesome470.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container"><p></p>
        <p></p>
        <div class="row text-center">

            <div class="col"> <h3> Payment Details</h3></div>

        </div><p></p>

        <div class="row"><p></p>
            <div class="col">
                
            </div>
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Enter Customer ID"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtsrch" runat="server" class="form-control form-control-lg" autocomplete="off"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Button ID="btnsrch" runat="server" Text="Search" class="btn btn-primary" 
                    onclick="btnsrch_Click"/>
            </div>
            <div class="col">
                <asp:Button ID="btnsrchall" runat="server" Text="Search All" 
                    class="btn btn-primary" onclick="btnsrchall_Click"/>
            </div>
            <div class="col">
                
            </div>
        </div>
    </div>
    <p></p>
    <p></p>
    <div class="container"><p></p>
        <div class="row"><p></p><p></p>
            <div class="col">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" CellSpacing="2" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </div>
        </div>
    </div>


    </form>
</body>
</html>
