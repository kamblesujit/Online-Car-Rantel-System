<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailVerfication.aspx.cs" Inherits="EmailVerfication" %>

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
            
            <div id="regisdiv">
                <div class="row">
                    <div class="col text-center">
                        <span class="lead"><h4>Email Verification</h4></span>
                    </div>
                </div>
                <div class="row"><p></p>
                    <div class="col"><p></p>
                        <asp:Label ID="Label9" runat="server" Text="Enter Email ID"></asp:Label>
                    </div>
                    <div class="col"><p></p>
                        <asp:TextBox ID="txtemlvrfy" runat="server" class="form-control form-control-sm"></asp:TextBox>
                    </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Button ID="Button2" runat="server" Text="Send" class="btn btn-primary" 
                            onclick="Button2_Click"/>
                    </div>                
                </div>
                <div class="row"><p></p>
                    <div class="col"><p></p>
                        <asp:Label ID="Label11" runat="server" Text="Enter Verify Code" Visible="False"></asp:Label>
                    </div>
                    <div class="col"><p></p>
                        <asp:TextBox ID="txtvrfycode" runat="server" 
                            class="form-control form-control-sm" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Button ID="Button3" runat="server" Text="Verify Code" class="btn btn-primary" 
                            onclick="Button3_Click" Visible="False"/>
                    </div>                
                </div>

            </div>
        </div>
        </div>
        

              

    </form>
</body>
</html>
