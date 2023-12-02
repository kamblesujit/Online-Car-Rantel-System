<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

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
   
    <link href="css/scrolling-nav.css" rel="stylesheet" type="text/css" />
    <link href="css/socialmediaicon.css" rel="stylesheet" type="text/css" />
    <link href="css/fontawesome470.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="css/ali.css" rel="stylesheet" type="text/css" />
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
    <script src="js/Validation.js" type="text/javascript"></script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid bg-dark text-white">
        <div class="row"><img  src="Images/car/car4.jpg" height="100%" width="100%"/>
            
            <div class="logdiv">
                <div class="row"><p></p>
                    <div class="col text-center">
                        <span class="lead"><h3>Login</h3></span><p></p>
                    </div>
                </div>
                <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtusrid" runat="server" class="form-control form-control-sm" autocomplete="off"  pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:TextBox></div>
                </div>
                <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" class="form-control form-control-sm"  pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:TextBox></div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" />
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Button ID="Button1" runat="server" Text="Login" 
                            class="btn btn-primary form-control form-control-sm" onclick="Button1_Click" />
                   </div>
                </div>
                <p></p>


                 <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Label ID="Label4" runat="server" Text="Or Through" Font-Size="Large"></asp:Label>
                   </div>
                </div>

                 <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/logo/Google-plus-circle-icon-png.png" Height="50px" 
                            Width="50px" onclick="ImageButton1_Click"/>
                   </div>
                   <div class="col text-center"><p></p>
                       <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/logo/fb_icon_325x325.png" Height="45px" Width="45px"/>
                   </div>
                </div>
                <p></p>               
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registration.aspx">New Registration</asp:LinkButton>
                   </div>
                   <div class="col text-center"><p></p>
                       <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Forgetpassword.aspx">Forgetpassword</asp:LinkButton>
                   </div>
                </div>

               

            </div>



           


        </div>
        
    </div>
    </form>
</body>
</html>
