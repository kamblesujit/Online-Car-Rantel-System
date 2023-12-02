<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

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
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
</head>
<body>
 <form id="form1" runat="server">
 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container-fluid">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Car Rental</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
        <span class="text-white">Hello : <asp:Label ID="lbladmin" runat="server" Text=""></asp:Label></span>
          <ul class="navbar-nav ml-auto">
             
                        
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger fa text-lg-center fa-sign-out" href="#" data-toggle="modal" data-target="#exampleModalCenter">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" >Logout</asp:LinkButton></a>
              <%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>--%>
            </li>
          </ul>
        </div>
      </div>
    </nav>

   



     <div id="uhome">
        
    
    <div class="row container-fluid" >
        
        <div class="col-sm-2"><p></p>
        <div id="MainMenu" class="">
        <div class="list-group panel">
          <a href="#" class="list-group-item list-group-item-success text-white bg-dark" data-parent="#MainMenu">My Home</a>          
          <a href="#demo1" class="list-group-item list-group-item-dark" data-toggle="collapse" data-parent="#MainMenu">Car Details   <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo1">              
            <a href="#" class="list-group-item" onclick="AddCars()">Add Cars</a>
            <a href="#" class="list-group-item" onclick="updatecar()">Update Car Details</a>
            <a href="#" class="list-group-item" onclick="srvcdtl()">Update Service Cars </a>                        
          </div>
          <a href="#demo2" class="list-group-item list-group-item-dark" data-toggle="collapse" data-parent="#MainMenu">Booking Details   <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo2">
            <a href="#" class="list-group-item" onclick="vbook()">View Booking</a>            
            <a href="#" class="list-group-item" onclick="dwisereport()">Datewise Report</a>            
            <a href="#" class="list-group-item" onclick="ctypreport()">Cartype Report</a>            
            <a href="#" class="list-group-item" onclick="pyreport()">Payment Report</a>            
          </div>
          <a href="#demo3" class="list-group-item list-group-item-dark" data-toggle="collapse" data-parent="#MainMenu">Customer Details   <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo3">
            <a href="#" class="list-group-item" onclick="feedb()">Feedback</a>
            <a href="#" class="list-group-item" onclick="regcust()">Registered Customers</a>                        
          </div>
          <a href="#demo4" class="list-group-item list-group-item-dark" data-toggle="collapse" data-parent="#MainMenu">Offers   <i class="fa fa-caret-down"></i></a>
          <div class="collapse" id="demo4">
            <a href="#" class="list-group-item" onclick="sendeml()">Send Email</a>
            
          </div>

        </div>
      </div> 
        </div>


        <div class="col-9 " id="stck"><p></p>
           
        </div>
  
    </div>
    </div>



     <footer class="py-2 bg-dark">
      <div class="container">
      <div class="row">
                
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
