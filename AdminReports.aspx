<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminReports.aspx.cs" Inherits="AdminReports" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

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
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col">
            <asp:Button ID="Button1" runat="server" Text="Show Data" 
                onclick="Button1_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Date Range"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Start Date"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="Invalid Date Formate" 
                            ForeColor="Red" onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="End Date"></asp:Label>
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        <asp:CustomValidator ID="CustomValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Invalid Date Formate" 
                            ForeColor="Red" onservervalidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Search" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <br />
    </div>
    
    </form>
</body>
</html>
