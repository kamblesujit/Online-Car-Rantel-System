<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>

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
    <div class="container"><p></p>
        <div class="row border-bottom"><p></p>
            <div class="col"><h3> Change Password</h3></div><p></p>
        </div><p></p>
        <div class="row "><p></p>
            <div class="col-sm-3">
                <asp:Label ID="Label1" runat="server" Text="Enter Old Password"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtopwd" class="form-control form-control-sm" TextMode="Password" runat="server"></asp:TextBox>
            </div>
        
        </div><p></p>
        <div class="row "><p></p>
            <div class="col-sm-3">
                <asp:Label ID="Label2" runat="server" Text="Enter New Password"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtnpwd" class="form-control form-control-sm" TextMode="Password" runat="server"></asp:TextBox>
            </div>
        
        </div><p></p>
        <div class="row "><p></p>
            <div class="col-sm-3">
                <asp:Label ID="Label3" runat="server" Text="Re-enter New Password"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtcnpwd" class="form-control form-control-sm" TextMode="Password" runat="server"></asp:TextBox>
            </div>
        
        </div><p></p>
        <div class="row "><p></p>
            <div class="col">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" 
                    Text="Change Password" onclick="Button1_Click" />
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
