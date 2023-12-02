<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adm.aspx.cs" Inherits="Adm" %>

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
    <link href="css/ali.css" rel="stylesheet" type="text/css" />
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">

    <h2>Add Brand</h2>
    <hr />
    <div class="form-group">
    
        <asp:Label ID="Label1" class="col-md-2 control-label" runat="server" Text="Label"></asp:Label></div>
        <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Add Brand" 
            onclick="Button1_Click" />
    
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Add Model name" />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="Add Cartype" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
            Text="Add Car Seats" />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="Add Fuel Type" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Add" />
        <br />
        <br />
        <br />
        <br />
        <br />
    <ul>
    <li><a href="#" onclick="myFunction()">Dis</a></li>
    </ul>
    </div>


    <div style="padding:20px">
  <h2>Overlay with Text</h2>
  <div id="text">Overlay Text</div>
  <button onclick="on()">Turn on overlay effect</button>
</div>
    <input id="Button7" type="button" onclick="myFunction()" value="button" />

<button onclick="myFunction()">Try it</button>

<div id="myDIV" class="overlay">
This is my DIV element.
<div class="container"><p></p>
    <div class="row"><p></p>
    <div class="col"></div>
    <div class="col"></div>
    </div>
    
</div>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</div>




    </form>
</body>
</html>
