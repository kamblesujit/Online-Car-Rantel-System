<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forgetpassword.aspx.cs" Inherits="Forgetpassword" %>

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
   
</head>
<body>
    <form id="form1" runat="server">
    
     <div class="container-fluid bg-dark text-white">
        <div class="row"><img  src="Images/car/car4.jpg" height="100%" width="100%"/>
            
            <div class="forgetdiv">
                <div class="row"><p></p>
                    <div class="col text-center">
                        <span class="lead"><h3>Forget Password</h3></span><p></p>
                    </div>
                </div>
                <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtusrid" runat="server" autocomplete="off" class="form-control form-control-sm" oninvalid="this.setCustomValidity('Please Enter valid userid Abcd@12345')" oninput="setCustomValidity('')" required="" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:TextBox></div>
                </div>
                <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label2" runat="server" Text="Email ID"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtemlid" runat="server" autocomplete="off" TextMode="Email" class="form-control form-control-sm" oninvalid="this.setCustomValidity('Please Enter valid email abc123@gmail.com')" oninput="setCustomValidity('')" required="" pattern="\b[a-z][\w\d_\.]+@\w+\.[a-z]{2}[a-z]?\.?[a-z]{,2}\s"></asp:TextBox></div>
                </div>
              <%--  <div class="row"><p></p>
                    <div class="col text-white"><p></p>

                        <asp:Image ID="Image1" runat="server" Height="50px" Width="150px" />
                   </div>
                   <div class="col text-white"><p></p>
                       <asp:TextBox ID="txtcapt" runat="server" autocomplete="off" class="form-control form-control-sm"></asp:TextBox>
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                   </div>
                </div>--%>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Button ID="Button1" runat="server" Text="Submit" 
                            class="btn btn-primary form-control form-control-sm" onclick="Button1_Click" />
                   </div>
                </div>  <p></p>           

            </div>

        </div>
        
    </div>
    </form>
</body>
</html>
