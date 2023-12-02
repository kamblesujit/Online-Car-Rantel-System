<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

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
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Car Rental</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
             <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger"  href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
                        
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger fa text-lg-center fa-sign-in " href="#" >login</a>
              <%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>--%>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">



    <div id="myDIV" class="overlay">
This is my DIV element.
<div class="container"><p></p>
    <div class="row"><p></p>
    <div class="col"><asp:TextBox ID="txtuserid" runat="server"></asp:TextBox>
      <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
      <asp:CheckBox ID="CheckBox1" runat="server" /></div>
    <div class="col"></div>
    </div>
    
</div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</div>



   

   
    <!-- Button trigger Sign in modal -->
    <!-- Modal -->
   <%-- <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">
                        <h3 class="text-center">
                            Login</h3>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="col-lg-12 ">
                        <div class="form-group">
                            <label for="email">
                                User ID:</label>
                            <asp:TextBox ID="txtuserid" class="form-control" placeholder="Enter User ID" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="pwd">
                                Password:</label>
                            <asp:TextBox ID="txtpwd" class="form-control" placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                        <div class="checkbox">
                            <asp:CheckBox ID="CheckBox1" Text="Remember Me" runat="server" />
                        </div>
                        <div class="container-fluid">
                            <div class="row center-content-between">
                                <div class="col-12 text-center">
                                    <p>
                                        <asp:Button ID="Button8" runat="server" Text="Button" 
                                            class="btn btn-primary form-control"  
                                             />
                                        <asp:LinkButton ID="LinkButton1" runat="server" data-toggle="modal" data-target="#exampleModalCenter">LinkButton</asp:LinkButton>

                                        </p>
                                </div>
                            </div>
                        </div>
                        <h3>
                            Or</h3>
                        <p>
                            Sign in Through</p>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col">
                                </div>
                                <div class="social-buttons">
                                </div>
                            </div>
                            <div class="col">
                                <a href="#" class="btn btn-primary btn-block"><i class="fa fa-facebook"></i>Facebook</a></div>
                            <div class="col">
                                <a href="#" class="btn btn-primary btn-block"><i class="fa fa-twitter"></i>Twitter</a></div>
                            <div class="col">
                                <a href="#" class="btn btn-primary btn-block"><i class="fa fa-google-plus"></i>Google+</a></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="container">
                        <div class="row justify-content-between">
                            <div class="col-4">
                                <p>
                                    <asp:LinkButton ID="LinkButton7" data-dismiss="modal" data-toggle="modal" data-target="#Registration"
                                        runat="server">New Registration</asp:LinkButton></p>
                            </div>
                            <div class="col-4">
                                <p>
                                    <asp:LinkButton ID="LinkButton8" class="text-right" data-toggle="modal" data-target="#forgotpass"
                                        data-dismiss="modal" runat="server">Forgot Password</asp:LinkButton></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- Button trigger Registration modal -->
    <!-- Modal -->
    <div class="modal fade" id="Registration" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="H1">
                        <h5 class="text-center">
                            New Registration</h5>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col">
                            <p>
                                <asp:TextBox ID="txtfnm" class="form-control form-control-sm" placeholder="First Name"
                                    runat="server"></asp:TextBox></p>
                        </div>
                        <div class="col">
                            <p>
                                <asp:TextBox ID="txtlnm" class="form-control form-control-sm" placeholder="Last Name"
                                    runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                <asp:TextBox ID="txtadd" class="form-control form-control-sm" placeholder="Type Address Here..."
                                    TextMode="MultiLine" runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                State</p>
                            <p>
                                <asp:DropDownList ID="drpstate" class="form-control form-control-sm" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Maharashtra</asp:ListItem>
                                    <asp:ListItem>Karnataka</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                District</p>
                            <p>
                                <asp:DropDownList ID="drpdistrict" class="form-control form-control-sm" runat="server" AutoPostBack="True">
                                    <asp:ListItem>Sangli</asp:ListItem>
                                    <asp:ListItem>Ratnagiri</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>
                        <div class="col">
                            <p>
                                City</p>
                            <p>
                                <asp:TextBox ID="txtcity" class="form-control form-control-sm" placeholder="Enter City"
                                    runat="server"></asp:TextBox></p>
                        </div>
                        <div class="col">
                            <p>
                                Zip</p>
                            <p>
                                <asp:TextBox ID="txtzip" class="form-control form-control-sm" placeholder="Enter Zip"
                                    runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                Date Of Birth
                            </p>
                            <p>
                                <asp:TextBox ID="txtdob" class="form-control form-control-sm" placeholder="Date of Birth"
                                    TextMode="Date" runat="server"></asp:TextBox></p>
                        </div>
                        <div class="col">
                            <p>
                                Mobile No
                            </p>
                            <p>
                                <asp:TextBox ID="txtmobile" class="form-control form-control-sm" placeholder="Enter Mobile No"
                                    TextMode="Phone" runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                <asp:TextBox ID="txtemailid" class="form-control form-control-sm" placeholder="Enter Email ID "
                                    TextMode="Email" runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                <asp:TextBox ID="txtuser" class="form-control form-control-sm" placeholder="Select User ID"
                                    runat="server"></asp:TextBox></p>
                        </div>
                        <div class="col">
                            <p>
                                <asp:Label ID="Label1" runat="server" Text="UserID should contain Atleast 1char 2Uppercase 1Lowercase and 1Symbol"
                                    Font-Size="X-Small"></asp:Label>
                            </p>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row center-content-between">
                            <div class="col-12 text-center">
                                <p>
                                    <asp:Button ID="Button7" runat="server" Text="Button" 
                                        class="btn btn-primary form-control" data-dismiss="modal" 
                                        onclick="Button7_Click" />
                                    </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Button trigger Forget Password modal -->
    <!-- Modal -->
    <div class="modal fade" id="forgotpass" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="H2">
                        <h5 class="text-center">
                            Forget Password</h5>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col">
                            <p>
                                User ID
                            </p>
                            <p>
                                <asp:TextBox ID="TextBox8" class="form-control form-control-sm" placeholder="Enter User ID"
                                    runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                Email ID
                            </p>
                            <p>
                                <asp:TextBox ID="TextBox12" class="form-control form-control-sm" placeholder="Enter Email ID"
                                    runat="server"></asp:TextBox></p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p>
                                <asp:Image ID="Image1" Height="50px" Width="200px" runat="server" Style="text-align: center" /></p>
                        </div>
                        <div class="col-md-6">
                            <p>
                            </p>
                            <p>
                                <asp:TextBox ID="TextBox20" class="form-control form-control-sm" placeholder="Enter Captcha Code"
                                    runat="server"></asp:TextBox>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <p>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </p>
                        </div>
                    </div>
                    <div class="container-fluid">
                        <div class="row center-content-between">
                            <div class="col-12 text-center">
                                <p>
                                    <asp:Button ID="Button5" class="btn btn-primary form-control" data-dismiss="modal"
                                        runat="server" Text="Sign In"></asp:Button></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <homesection id="home">
        <div class="container2">
      <img src="Images/banner9.jpg" alt="Nature" 
                style="width: 100%; top: 0px; left: 0px;">
           <div class="contenttt ">        
                <h2 class="text-center">Rent Your Drive</h2>
                <p></p>

            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-Outstation-tab" data-toggle="pill" href="#pills-Outstation" role="tab" aria-controls="pills-Outstation" aria-selected="true"><asp:Label ID="Label5" runat="server" Text="OutStation"></asp:Label></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-Local-tab" data-toggle="pill" href="#pills-Local" role="tab" aria-controls="pills-Local" aria-selected="false"><asp:Label ID="Label4" runat="server" Text="Local"></asp:Label></a>
  </li>
  
</ul>
    

<div class="tab-content" id="pills-tabContent" >
            <div class="tab-pane fade show active" id="pills-Outstation" role="tabpanel" aria-labelledby="pills-Outstation-tab">
            <div class="row">
            <div class="col">
            <p>
                Select City</p>
            <p>
                <asp:DropDownList class="form-control form-control-sm" ID="drpselectcity" placeholder="col-form-label-sm" AutoPostBack="true"
                    runat="server">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                                    <asp:ListItem>Karnataka</asp:ListItem>
                </asp:DropDownList>
            </p>
            </div>
            <div class="col">
            <p>
                Select Car Type</p>
            <p>
                <asp:DropDownList class="form-control form-control-sm" ID="drpcartype" placeholder="col-form-label-sm"
                    runat="server">
                </asp:DropDownList>
            </p>
            </div>
            </div>
            <div class="row">
                <div class="col">
                    <p>
                        Pick-up Location</p>
                    <p>
                        <asp:DropDownList class="form-control form-control-sm" ID="drppickuplocation" placeholder="Enter email" AutoPostBack="true"
                            runat="server">
                            <asp:ListItem>A</asp:ListItem>
                                    <asp:ListItem>B</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                </div>                
            </div>
            <div class="row">
                <div class="col">
                    <p>
                        Pickup Date</p>
                    <p>
                        <asp:TextBox ID="txtpickupdate" runat="server" class="form-control form-control-sm" placeholder="Enter Date" type="date"></asp:TextBox>
                       
                    </p>
                </div>
                <div class="col">
                    <p>
                        Pickup Time</p>
                    <p>
                        <asp:TextBox ID="txtpickuptime" runat="server" class="form-control form-control-sm" placeholder="Enter Time" type="time" value="13:45:00"></asp:TextBox>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p>
                        Return Date</p>
                    <p>
                        <asp:TextBox ID="txtreturndate" class="form-control form-control-sm" placeholder="First name" type="date" value="13:45:00"
                            runat="server"></asp:TextBox></p>
                </div>
                <div class="col">
                    <p>
                        Return Time</p>
                    <p>
                        <asp:TextBox ID="txtreturntime" class="form-control form-control-sm" type="time" value="13:45:00"
                            runat="server"></asp:TextBox></p>
                </div>
            </div>
            <p></p>
            <p>
                
                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Button" class="btn btn-primary form-control form-control-sm" /></p>

    </div>


<div class="tab-pane fade show " id="pills-Local" role="tabpanel" aria-labelledby="pills-Local-tab">


            <div class="row ">
                <div class="col">
                    <p>
                        Pick-Up Location</p>
                    <p>
                         <asp:DropDownList class="form-control form-control-sm" ID="DropDownList1" placeholder="col-form-label-sm"
                    runat="server">
                </asp:DropDownList>
                    </p>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <p>
                        Car Duration</p>
                    <p>
                        <asp:DropDownList class="form-control form-control-sm" ID="DropDownList6" placeholder="col-form-label-sm"
                    runat="server">
                </asp:DropDownList>
                    </p>
                </div>
            
            </div>

            <div class="row">
                <div class="col">
                    <p>
                        Pickup Date</p>
                    <p>
                        <asp:DropDownList class="form-control form-control-sm" type="date" ID="DropDownList4"
                            placeholder="Enter email" runat="server">
                        </asp:DropDownList>
                    </p>
                </div>
                <div class="col">
                    <p>
                        Pickup Time</p>
                    <p>
                        <asp:DropDownList class="custom-select custom-select-sm" type="date" ID="DropDownList5"
                            placeholder="Enter email" runat="server">
                        </asp:DropDownList>
                    </p>
                </div>
            </div>
              
           <asp:Label ID="Label3" runat="server" Text="Extra per KM Charges will be applicable after Free KMs " Font-Size="X-Small" ForeColor="White"></asp:Label>
            <p></p>
            <p>
                <asp:Button ID="Button2" class="btn btn-primary form-control form-control-sm"  runat="server" Text="Submit"></asp:Button></p>

</div>
</div>


</div>

</div>
    </homesection>


    <aboutsection id="about" class="bg-abt">
      <div class="container ">
        <div class="row">
            <div class="col mx-auto text-center border-bottom"><h3>About Us</h3></div>
        </div>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/booking.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 bg-abt">
                The booking system is the heart and soul of the car rental website,our system provide user 
                friendly booking interface this incluides clear description of various cars types available 
                 in the as per the no of people,seprate pricing plans for members ,special iofferes,the
                 corresponding fare,easy date,time and location picking options,and multiple packages(1 day package/2 day package/3 day package).
                
            
            </div>
        </div>
        </div>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/mobile.jpg" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 bg-abt">
                The maximum percentage of users books car over mobile phones,our websites develop and compatible 
                across all screen sizes,thus facilating smooth booking at home and on the go. 
            
            </div>
        </div>
        </div>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/Feedback.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 bg-abt">
                In our rental system adding a personal touch and factual content of the available cars and fares can be done using recommandations.
                and also set up the features displayed in recommanded travel booking plan and requirements such as long distance journeys,local 
                attractions and so on.
            
            </div>
        </div>
        </div>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/pay.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 bg-abt">
                 We provide integrated,secure payment gateways that let users complete transactions quickly,maintaining the most stringent security standards.

            
            
            </div>
        </div>
        </div>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/profile.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 bg-abt">
                 We provide customizable and user friendly services,also generating user profile that contains complete user information as well as booking details,
                 easy car rent calculations that tremendeous helpfull for accessible the service 
            
            </div>
        </div>
        </div>


        <div class="row">
        <div class="col-md-9 mx-auto">
         <h2>About Us</h2>
        </div>
          <div class="col-lg-8 mx-auto">            
           <p> <p class="lead">Here is what Makes Car Rental Services your first choice for renting self drive Cars anywhere in India :</p>
            <ul>
              <li>Rent a Self Drive Car by the Hour, Kilometers</li>
              <li>Unlimited Kilometers</li>
              <li>Free Service for limited area Near to Office upto 7KM</li>
              <li>All inclusive Fares : No Additional Cost of Insurance, Tax or Pollution</li>
            </ul>
            </p>
          </div>
          <div class="col-md-8 mx-auto text-center">
         <h3 class="text-left">So what are you Waiting for ? </h3>
         <p><h3 class="text-right">Time To Book And Ride ! </h3></p>
        </div>

        
        </div>
        <div class="row">
            <div class="col-lg-9 mx-auto text-left ">
            
        <button type="button" class="btn btn-lg btn-white text-danger btn-sm" data-toggle="popover" title="Terms & Conditions" data-content="1. Customers Age must be completed 21 years.  2. License Should be compulsary.  3. Over Speeding (speed limit 120 km/hr) will attract penalty. This is for your own safty. ">Terms & Condition</button>
        
        </div>

        <div class="col-lg-9 mx-auto text-left ">
            
        <button type="button" class="btn btn-lg btn-white text-danger btn-sm" data-toggle="popover" title="Terms & Conditions" data-content="1 ">Faqs</button>
        
        </div>



        <h2>Simple Collapsible</h2>
  <a href="#demo" class="btn btn-info" data-toggle="collapse">Simple collapsible</a>
  <div id="demo" class="collapse">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
  </div>

        </div>
      </div>
    </aboutsection>

    <section id="services" class="bg-srv">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Our Servicses</h2>
            <p class="lead"><ul>
            <li>We provide 24 Hrs Customizable Services.</li>
            <li>Quickly Calculate our Rent using rent calculator.</li>
            <li>Free Service for limited area Near to Office upto 7KM</li>
            <li>No Extra Charges to be Paid on Damage of Car, Damage Cost Recoverd through Car Insurance.</li>
            </ul>.</p>
          </div>
        </div>
      </div>
    </section>
    <section id="contact" class="bg-cnt">
      <div class="container">
            
        <div class="row">
            
          <div class="col">
            <h2>Contact Us</h2>
            <p class="lead">
            <ul>
		        <li>Phone : 123 - 456 - 789</li>
		        <li>E-mail : info@comapyn.com</li>
		        <li>Fax : 123 - 456 - 789</li>
		    </ul>
            </p>

            <p>Contact with us by:</p>
            <div class="sm">

                <div class="social-buttons">

					<a href="#"><i class="fa bg-fb fa-facebook"></i></a>
					<a href="#"><i class="fa bg-tw fa-twitter " ></i></a>
					<a href="#"><i class="fa bg-lnk fa-linkedin"></i></a>
					<a href="#"><i class="fa bg-g fa-google-plus"></i></a>

				</div>
		    </div>


          </div>
          <div class="col-md-8">
         
            <h2 class="">Feedback </h2>
             <p></p>
            <div class="row ">

               
                <div class="col-md-6">
                    <p>
                        Name: </p>
                    <p>
                        <asp:TextBox ID="TextBox2" class="form-control form-control-sm" placeholder=" Enter Name " runat="server"></asp:TextBox>                         
                    </p>
                </div>
                <div class="col-md-6">
                    <p>
                        Mobile No: </p>
                    <p>
                        <asp:TextBox ID="TextBox3" class="form-control form-control-sm" placeholder=" Enter Mobile No " runat="server"></asp:TextBox>
                    </p>
                </div>
            </div>

            <div class="row ">
                <div class="col">
                    <p>
                        Email ID: </p>
                    <p><asp:TextBox ID="TextBox6" class="form-control form-control-sm" placeholder=" Enter Email ID " TextMode="Email" runat="server"></asp:TextBox>
                         
                    </p>
                </div>            
            </div>
            <div class="row ">
                <div class="col">
                    <p>
                        Comment: </p>
                    <p><asp:TextBox ID="TextBox7" class="form-control form-control-sm" placeholder=" Type Comment Here... " TextMode="MultiLine" runat="server"></asp:TextBox>
                         
                    </p>
                </div>            
            </div>  
            
            <asp:Button ID="Button3" class="btn btn-primary form-control form-control-sm" runat="server" Text="Submit"></asp:Button>        
          </div>


      </div>
       </div>   
    </section>

    <div class="container-fluid bg-dark">
        <div class="row" id="googleMap">
            <div class="col" id="googleMap">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.4021142661354!2d73.82542661489393!3d18.600974787362258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b89723daaa33%3A0xd12c2c1aa059b9d5!2sRahul+Chambers!5e0!3m2!1sen!2sin!4v1522746674894"
                    width="100%" height="90%" sytle="" frameborder="0" style="border: 0" allowfullscreen>
                </iframe>
            </div>
        </div>
    </div>

    <footer class="py-2 bg-dark">
      <div class="container">
      <div class="row">
                <div class="col">
                    <a href="#home" class="badge badge-dark">Home</a>
                    <a href="#about" class="badge badge-dark">About</a>
                    <a href="#services" class="badge badge-dark">Service</a>
                    <a href="#contact" class="badge badge-dark">Contact</a>
                </div>
                <div class="col">
                    <p class="m-0 text-right text-white">Copyright &copy; Car Rental System 2018</p>
                </div>
            </div>
        
        
      </div>
      <!-- /.container -->
    </footer>

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
