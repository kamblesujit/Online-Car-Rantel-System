﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisteredUser.aspx.cs" Inherits="RegisteredUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Scrolling Nav - Start Bootstrap Template</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet">
    <link href="css/socialmediaicon.css" rel="stylesheet" type="text/css" />
    <link href="css/fontawesome470.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">
        <p>
        </p>
        <div class="row border-bottom">
            <p>
            </p>
            <div class="col">
                <h3>Registered Customers</h3>
            </div>
            <p>
            </p>
        </div>
        <p>
        </p>
        <div class="row ">
            <p>
            </p>
            <div class="col">
            </div>
            <div class="col">
                
                <asp:TextBox ID="txtsearch" class="form-control form-control-sm" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" 
                    Text="Enter Customer ID " onclick="Button2_Click" />     
                
            </div>
            <div class="col">
            <asp:Button ID="Button1" runat="server" Text="Search All" 
                    class="btn btn-primary" onclick="Button1_Click" />
            </div>
        </div>
        <p>
        </p>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
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
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
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
                  
               <%--     <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Cust ID</th>
      <th scope="col">Name</th>
      <th scope="col">UserID</th>
      <th scope="col">Password</th>
      <th scope="col">Email ID</th>
      <th scope="col">Mobile No.</th>
      <th scope="col">Address</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Registration Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><asp:Label ID="lblcustid" runat="server" Text=""></asp:Label></th>
      <td><asp:Label ID="lblcname" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lbluserid" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lblpassword" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lblemailid" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lblmobileno" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lbladdress" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lbldateofbirth" runat="server" Text=""></asp:Label></td>
      <td><asp:Label ID="lblregistrationtype" runat="server" Text=""></asp:Label></td>

    </tr>
   
  </tbody>
</table>--%>
                    <br />
                   
                </div>
            </div>
        
        </div>

    </form>
</body>
</html>
