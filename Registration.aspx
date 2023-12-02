<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

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
            
            <div id="regisdiv">
                <div class="row">
                    <div class="col text-center">
                        <span class="lead"><h4>New Registration</h4></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col"><p></p>
                        <asp:Label ID="Label1" runat="server" Text="Name "></asp:Label></div>
                    <div class="col"><p></p>
                    <asp:Label ID="Label2" runat="server" Text="Mobile "></asp:Label></div>
                 </div>  
                 <div class="row">
                    <div class="col">
                        <asp:TextBox ID="txtnm" runat="server" class="form-control form-control-sm" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Name eg First Last')" oninput="setCustomValidity('')" required="" pattern="^[A-Z][a-z]+\s[A-Z][a-z]+$" placeholder=""></asp:TextBox></div>
                    <div class="col">
                        <asp:TextBox ID="txtmob" runat="server" class="form-control form-control-sm" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Mobile Number eg. 9*********')" oninput="setCustomValidity('')" required=""  pattern="[789][0-9]{9}" placeholder=""></asp:TextBox>
                    </div>
                </div>
                
                <div class="row"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                   </div>
                   <div class="col text-white"><p></p>
                        <asp:Label ID="Label6" runat="server" Text="Address "></asp:Label>
                      
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-white">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" required="" >
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                   </div>
                   <div class="col text-white">
                        <asp:TextBox ID="txtaddr" runat="server" class="form-control form-control-sm" autocomplete="off" TextMode="MultiLine" oninvalid="this.setCustomValidity('Please Do not blank text')" oninput="setCustomValidity('')" required="" placeholder="Do not Blank"></asp:TextBox>
                       
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:Label ID="Label7" runat="server" Text="Email ID "></asp:Label>
                   </div>
                   <div class="col text-white"><p></p>
                        <asp:Label ID="Label8" runat="server" Text="User ID "></asp:Label>
                       
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-white">
                        <asp:TextBox ID="txtemlid" runat="server" class="form-control form-control-sm" autocomplete="off" TextMode="Email" placeholder="" oninvalid="this.setCustomValidity('Please Enter valid email eg. xxx123@xxx.xxx')" oninput="setCustomValidity('')" required="" pattern="\b[a-z][\w\d_\.]+@\w+\.[a-z]{2}[a-z]?\.?[a-z]{,2}\s"></asp:TextBox>
                   </div>
                   <div class="col text-white">
                        <asp:TextBox ID="txtusrid" runat="server" class="form-control form-control-sm" autocomplete="off" placeholder="" oninvalid="this.setCustomValidity('Please Enter valid Userid eg.Xx@123 ')" oninput="setCustomValidity('')" required="" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:TextBox>
                   </div>
                </div>
                                              
                <div class="row"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:Label ID="Label3" runat="server" Text="Password "></asp:Label>
                   </div>
                   <div class="col text-white"><p></p>
                        <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                       
                   </div>
                </div>
                <div class="row"><p></p>
                    <div class="col text-white">
                        <asp:TextBox ID="txtpwd" runat="server" class="form-control form-control-sm" autocomplete="off" placeholder="" TextMode="Password" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters  eg. Xx@123' : ''); if(this.checkValidity()) form1.pwd2.pattern = this.value;" required="" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"  name="pwd1" ></asp:TextBox>
                   </div>
                   <div class="col text-white">
                        <asp:TextBox ID="pwd2" runat="server" class="form-control form-control-sm" autocomplete="off" placeholder="" TextMode="Password" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above eg. Xx@123' : '');" required="" name="pwd2" pattern="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})"></asp:TextBox>
                   </div>
                </div>
                
                <p></p>
                <div class="row"><p></p>
                    <div class="col text-center"><p></p>
                        <asp:Button ID="Button1" runat="server" Text="Register"  
                            class="btn btn-primary form-control form-control-sm" onclick="Button1_Click" />
                   </div>
                   
                </div>

                <p></p>
                <%--<div class="row"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:Label ID="Label9" runat="server" Text="Or Sign In Through"></asp:Label>
                       
                   </div>
                </div>

                <p></p>

                <div class="row text-center"><p></p>
                    <div class="col text-white"><p></p>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                            ImageUrl="~/logo/twtr.jpg" onclick="ImageButton1_Click" />
                   </div>
                   <div class="col text-white"><p></p>
                       <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" 
                           ImageUrl="~/logo/fb_icon_325x325.png" onclick="ImageButton2_Click" />
                       
                   </div>
                   <div class="col text-white"><p></p>
                       <asp:ImageButton ID="ImageButton3" runat="server" Height="50px" 
                           ImageUrl="~/logo/Google-plus-circle-icon-png.png" 
                           onclick="ImageButton3_Click" />
                   </div>
                </div>
                --%>

               

            </div>



           


        </div>
        
    </div>

    </form>
</body>
</html>
