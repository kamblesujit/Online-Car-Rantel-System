<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admcar.aspx.cs" Inherits="admcar" %>

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
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Button" /><asp:DropDownList ID="DropDownList2"
            runat="server">
        </asp:DropDownList>
        &nbsp;<div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
        <div class="col-sm-3 col-md-3">
             <div class="thumbnail">
             <img src="" />
                 <div class="caption">
                    <div class="probrand"><%#Eval("ctypname") %></div>
                    <div class="probrand"><%#Eval("bname") %></div>
                    <div class="proname"><%#Eval("cprice") %></div>
                    <div class="proname"><%#Eval("ftypid") %></div>
                    <div class="proPrice"> <span class"proOgPrice"><%#Eval("crateperkm") %></span></div>
                 </div>
             </div>
        </div>
  </ItemTemplate>
  </asp:Repeater>
  </div>
  
  
  
  
  
         <br />
    </div>
    </form>
</body>
</html>
