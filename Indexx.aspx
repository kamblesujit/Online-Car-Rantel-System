<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Indexx.aspx.cs" Inherits="Index1" %>

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
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bgg-me fixed-top" id="mainNav">
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
              <a class="nav-link js-scroll-trigger text-md-center fa text-center fa-sign-in " href="LoginPage.aspx" >login</a>
              <%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>--%>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<body>
    <form id="form1" runat="server">
    

    <aboutsection id="home" ><p></p>
        <div class="conta bgg-me" ><p></p>
            <div class="container" ><p></p>

                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" >
  <ol class="carousel-indicators" >
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Images/car/car1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/car/car81.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/car/car11.jpg" alt="Third slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/car/car12.jpg" alt="Fourth slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images/car/car13.jpg" alt="Fourth slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

            </div>
        </div>
    </aboutsection>


     <homesection>
        <div class="container2 ">
      
           <div class="contenttt ">        
                <h4 class="text-center">Rent Your Drive</h4>
                <p></p>

            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-Outstation-tab" data-toggle="pill" href="#pills-Outstation" role="tab" aria-controls="pills-Outstation" aria-selected="true"><asp:Label ID="Label5" runat="server" Text="OutStation" Font-Size="Small"></asp:Label></a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-Local-tab" data-toggle="pill" href="#pills-Local" role="tab" aria-controls="pills-Local" aria-selected="false"><asp:Label ID="Label4" runat="server" Text="Local" Font-Size="Small"></asp:Label></a>
  </li>
  
</ul>
    

<div class="tab-content" id="pills-tabContent" >
            <div class="tab-pane fade show active" id="pills-Outstation" role="tabpanel" aria-labelledby="pills-Outstation-tab">
            <div class="row">
            <div class="col">
            <p>
                 Destination</p>
            <p>
                <asp:DropDownList class="form-control form-control-sm" ID="drpselectcity" placeholder="col-form-label-sm" 
                    runat="server">
                    
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
                        <asp:DropDownList class="form-control form-control-sm" ID="drppickuplocation" placeholder="Enter email" 
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
                        <asp:TextBox ID="txtpickupdate" runat="server" class="form-control form-control-sm"  placeholder="Enter Date" type="date"></asp:TextBox>
                       
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
                        <asp:TextBox ID="txtreturndate" class="form-control form-control-sm" placeholder="First name" type="date" 
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
            
           
                <asp:Button ID="Button1" runat="server" Text="Submit" 
                    class="btn btn-primary form-control form-control-sm" onclick="Button1_Click" formnovalidate></asp:Button>
                <%--<asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Button" class="btn btn-primary form-control form-control-sm" /></p>--%>

    </div>


<div class="tab-pane fade show " id="pills-Local" role="tabpanel" aria-labelledby="pills-Local-tab" style="width:320px">


            <div class="row ">
                <div class="col">
                    <p>
                        Select Car Type</p>
                    <p>
                         <asp:DropDownList class="form-control form-control-sm" ID="drpctyp" placeholder="col-form-label-sm"
                    runat="server">
                </asp:DropDownList>
                    </p>
                </div>
            </div>

            <div class="row ">
                <div class="col">
                    <p>
                        Pick-Up Location</p>
                    <p>
                         <asp:DropDownList class="form-control form-control-sm" ID="drpploclo" placeholder="col-form-label-sm"
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
                        <asp:DropDownList class="form-control form-control-sm" ID="drpcduration" placeholder="col-form-label-sm" 
                    runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                    </p>
                </div>
            
            </div>

            <div class="row">
                <div class="col">
                    <p>
                        Pickup Date</p>
                    <p>
                        <asp:TextBox ID="txtpdtloc" runat="server" class="form-control form-control-sm" placeholder="Enter Date" type="date"></asp:TextBox>
                    </p>
                </div>
                <div class="col">
                    <p>
                        Pickup Time</p>
                    <p>
                        <asp:TextBox ID="txtptmloc" runat="server" class="form-control form-control-sm" placeholder="Enter Date" type="time" value="13:45:00"></asp:TextBox>
                    </p>
                </div>
            </div>
              
           <asp:Label ID="Label3" runat="server" Text=" " Font-Size="X-Small" ForeColor="White"></asp:Label>
            
            <p>
                <asp:Button ID="Button2" class="btn btn-primary form-control form-control-sm"  
                    runat="server" Text="Submit" onclick="Button2_Click" formnovalidate></asp:Button></p>

</div>
</div>


</div>
</div>
    <marquee class="bgg-me" behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();" style="font-size:larger; color:Red; font-weight:bold">Free Delivery Service is upto 7 km. around our Office</marquee>

    </homesection>




    <section id="about" class="bgg-mee">

    
        <div class="container ">
        <div class="row">
            <div class="col mx-auto text-center"><h2>About Us</h2></div>
        </div>
        <p></p>
        <div class="container "><p></p>
        <div class="row">
            <div class="col-md-2">
                <img src="logo/booking.png" alt="..." class="rounded " style="height:80px; width:100px">
            </div>
            <div class="col-md-10 ">
                The booking system is the heart and soul of the car rental website,our system provide user 
                friendly booking interface this incluides clear description of various cars types available 
                 in the as per the no of people,seprate pricing plans for members ,special offeres,the
                 corresponding fare,easy date,time and location picking options,and multiple packages(1 day package/2 day package/3 day package).
                 we have our own cars like hyundai elite,maruti ciaz,ford escort,mercedes benz you will get both a/c and non a/c facility with these cars 
                 we have doorstep service in limited area and we also provide cars on kilometers for local as well as basic outstation
                
            
            </div>
        </div>
        </div><p></p>
        <div class="container ">
        <div class="row">
            <div class="col-md-2">
                <img src="logo/mobile.jpg" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 ">
                The maximum percentage of users books car over mobile phones,tablet,desktop computer or wide screen ,our websites develop and compatible 
                across all screen sizes,thus facilating smooth booking at home and on the go. 
            
            </div>
        </div>
        </div><p></p>
        <div class="container ">
        <div class="row">
            <div class="col-md-2">
                <img src="logo/Feedback.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 ">
                In our rental system adding a personal touch and actual content of the available cars and fares can be done using recommandations.
                and also set up the features displayed in recommanded travel booking plan and requirements such as long distance journeys,local 
                attractions and so on.we will  only send you email in respose to this inquiry,we will not resell ypur email address to any other party for any purpose
                we value your privacy  
            
            </div>
        </div>
        </div><p></p>
        <div class="container ">
        <div class="row">
            <div class="col-md-2">
                <img src="logo/pay.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 ">
                 We provide integrated,secure payment gateways that let users complete transactions quickly,maintaining the most stringent security standards.
                 we will able to pay for your car rentals with all major credit  cards,master cards.additionally regardeless of your payment type,there will be deposite of our rentals.
                 the amount of deposite depend upon the selected rental category by the renter  

            
            
            </div>
        </div>
        </div><p></p>
        <div class="container ">
        <div class="row">
            <div class="col-md-2">
                <img src="logo/profile.png" alt="..." class="rounded" style="height:80px; width:100px">
            </div>
            <div class="col-md-10 ">
                 We provide customizable and user friendly services,also generating user profile that contains complete user information as well as booking details,
                 easy car rent calculations that tremendeous helpfull for accessible the service.our system provide an integral part of travelling in all over india,
                 it is an true service based company providing you your required transport vehicle at the destinstion of your choice ,always at the scheduled time 
            
            </div>
        </div>
        </div>

     </div>


         <%--  <div class="row">
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
      --%>

    </section>
    
<%--
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
      
 </aboutsection>--%>





    <section id="services" class="bgg-meee">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Our Servicses</h2>
            <p class="lead"><ul>
            <li>We provide 24 Hrs Customizable Services.</li>
            <li>Quickly Calculate our Rent using rent calculator.</li>
            <li>Free Service for limited area Near to Office upto 7KM</li>
            <li>No Extra Charges to be Paid on Damage of Car, Damage Cost Recoverd through Car Insurance.</li>
            <li>This website provide integrated ,secure payment gateway that let users complete transactions quickly,in ahassle-free mannner</li>
            <li>As part of the service industry,ensuring regular communication and vehicle update maintained in the car rental website and festival offeres and wishes send for customers throuh email or mobile no.</li>

            </ul>.</p>
          </div>
        </div>
      </div>
    </section>


    <section id="contact" class="bgg-meeee">
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
                        <asp:TextBox ID="txtnm" class="form-control form-control-sm" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Name ')" oninput="setCustomValidity('')" required="" pattern="^[A-Z][a-z]+\s[A-Z][a-z]+$" placeholder="First Last" runat="server"></asp:TextBox>                         
                    </p>
                </div>
                <div class="col-md-6">
                    <p>
                        Mobile No: </p>
                    <p>
                        <asp:TextBox ID="txtmob" class="form-control form-control-sm" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Mobile Number')" oninput="setCustomValidity('')" required="" pattern="[789][0-9]{9}" placeholder=" Enter Mobile No " runat="server"></asp:TextBox>
                    </p>
                </div>
            </div>

            <div class="row ">
                <div class="col">
                    <p>
                        Email ID: </p>
                    <p><asp:TextBox ID="txteml" class="form-control form-control-sm" autocomplete="off" placeholder="xxx123@xxx.xxx" oninvalid="this.setCustomValidity('Please Enter valid email')" oninput="setCustomValidity('')" required="" pattern="\b[a-z][\w\d_\.]+@\w+\.[a-z]{2}[a-z]?\.?[a-z]{,2}\s" TextMode="Email" runat="server"></asp:TextBox>
                         
                    </p>
                </div>            
            </div>
            <div class="row ">
                <div class="col">
                    <p>
                        Comment: </p>
                    <p><asp:TextBox ID="txtcomment" class="form-control form-control-sm" autocomplete="off" oninvalid="this.setCustomValidity('Please Do not Blank Text')" oninput="setCustomValidity('')" required=""  placeholder=" Type Comment Here... " TextMode="MultiLine" runat="server"></asp:TextBox>
                         
                    </p>
                </div>            
            </div>  
            
            <asp:Button ID="Button3" class="btn btn-primary form-control form-control-sm" 
                  runat="server" Text="Submit" onclick="Button3_Click"></asp:Button>        
          </div>


      </div>
       </div>   
    </section>

    <div class="container-fluid bgg-meeeee">
        <div class="row" id="googleMap">
            <div class="col" id="googleMap">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3781.4021142661354!2d73.82542661489393!3d18.600974787362258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2b89723daaa33%3A0xd12c2c1aa059b9d5!2sRahul+Chambers!5e0!3m2!1sen!2sin!4v1522746674894"
                    width="100%" height="90%" sytle="" frameborder="0" style="border: 0" allowfullscreen>
                </iframe>
            </div>
        </div>
    </div>

    <footer class="py-2 bgg-meeeee">
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
