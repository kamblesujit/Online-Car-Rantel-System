<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookCar.aspx.cs" Inherits="BookCar" %>

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
    
    
    <div class="container">
    <asp:Panel ID="Panel2" runat="server">
        <div class="row border-bottom">
            <div class="col-sm-12 mx-auto "><p></p>
            <p><h3>Booking Details</h3>
                <p>
                </p>
                </p>
            </div>
        </div>
        
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtnm" class="form-control form-control-sm" runat="server" autocomplete="off"></asp:TextBox>
            </div>
        
        </div>
        
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label9" runat="server" Text="Mobile No"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtmob" class="form-control form-control-sm" runat="server" autocomplete="off"></asp:TextBox>
            </div>
        
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label10" runat="server" Text="Date Of Birth"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtdob" class="form-control form-control-sm" runat="server" type="date"  autocomplete="off"></asp:TextBox>
            </div>
        
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label11" runat="server" Text="Email ID"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txteml" class="form-control form-control-sm" runat="server" TextMode="Email" autocomplete="off"></asp:TextBox>
            </div>
        
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:RadioButtonList ID="RadioButtonList1"   runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal" >
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                
            </div>
        
        </div>

        <div class="row text-right border-bottom">
            <div class="col"><p></p>
            
                <asp:Button ID="Button2" class="btn btn-primary"  runat="server" Text="Next" 
                    onclick="Button2_Click" />
                <p></p>
            </div>
        
        </div>



        </asp:Panel>
        <p></p>
        <p></p>



        <asp:Panel ID="Panel1" runat="server">
       
        <div class="row border-bottom " >
            <div class="col-sm-12 mx-auto "><p></p>
            <p><h3>Secondray Details</h3>
                <p>
                </p>
                </p>
            </div>
        </div>
        
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label13" runat="server" Text="Driving License"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtdrvlicn" class="form-control form-control-sm" runat="server" autocomplete="off"></asp:TextBox>
            </div>
        
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label14" runat="server" Text=" Adhaar Card No"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtadhaarno" class="form-control form-control-sm" runat="server" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Adhaar Card Number')" oninput="setCustomValidity('')" required=""  pattern="^\d{4}\s\d{4}\s\d{4}$" placeholder="9684 1552 2551"></asp:TextBox>
            </div>
        
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:CheckBox ID="CheckBox1" runat="server" /><span>I agree with your T&C</span>
            </div>
        
        </div>
       
        <div class="row border-bottom ">
            <div class="col text-right"><p></p>
                <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Confirm" 
                    onclick="Button3_Click" />
                <p></p>
            </div>
        
        </div>


         </asp:Panel>
        








        
    </div>
  
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>
    </form>
</body>
</html>
