<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

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
            <div class="col"><h3> Edit Profile</h3></div><p></p>
        </div><p></p>
        <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblnm" runat="server" Text="Name"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtnm" runat="server" autocomplete="off" required=""></asp:TextBox>
            </div>
        
        </div><p></p>

         <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" ></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtdob" runat="server" autocomplete="off" type="date"></asp:TextBox>
            </div>
        
        </div><p></p>

         <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblmob" runat="server" Text="Mobile No"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtmob" runat="server" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Mobile Number')" oninput="setCustomValidity('')" required=""  pattern="[789][0-9]{9}" placeholder="+91 9*********"></asp:TextBox>
            </div>
        
        </div><p></p>

         <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lbladdr" runat="server" Text="Address" ></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" required=""></asp:TextBox>
            </div>
        
        </div><p></p>


         <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
            </div>
            <div class="col">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" required="" >
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
            </div>
        
        </div><p></p>

        <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblstate" runat="server" Text="State"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtstate" autocomplete="off" runat="server"></asp:TextBox>
            </div>
        
        </div><p></p>

        <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lbldistrict" runat="server" Text="District"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtdistrict" autocomplete="off"  runat="server"></asp:TextBox>
            </div>
        
        </div><p></p>

        <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblcity" runat="server" Text="City"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtcity" autocomplete="off" runat="server" required=""></asp:TextBox>
            </div>
        
        </div><p></p>

        <div class="row "><p></p>
            <div class="col">
                <asp:Label ID="lblzip" runat="server" Text="Zip"></asp:Label>
            </div>
            <div class="col">
                <asp:TextBox ID="txtzip" runat="server" autocomplete="off"  oninvalid="this.setCustomValidity('Please Enter valid Zip code')" oninput="setCustomValidity('')" required=""  pattern="[0-9]+\s[0-9]{3}" placeholder="+91 9*********"></asp:TextBox>
            </div>
        
        </div><p></p>





        <div class="row "><p></p>
            <div class="col">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" 
                    onclick="Button1_Click" />
            </div>
        </div>   <p></p><p></p>    
        


    </div>
    </form>
</body>
</html>
