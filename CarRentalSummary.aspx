<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarRentalSummary.aspx.cs"
    Inherits="css_CarRentalSummary" %>

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
              <a class="nav-link js-scroll-trigger fa text-lg-center fa-sign-in" href="#" data-toggle="modal" data-target="#exampleModalCenter">login</a>
              <%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>--%>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">

    <div id="about" class="rentsummary bg-fb">
        <div class="container">
            <div class="row">
                <%--<p></p>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Image ID="Image1" class="card-img" src="Images/banner9.jpg" alt="Card image cap" runat="server" />
                    </div>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="col-sm-2 bg-dark"><p></p>
                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                    </div>
--%>
                
            </div>
            <div class="row bg-danger">
                <div class="col-lg-4 bg-dark">
                <p></p>
                    <div class="col ">
                        <div class="card-deck text-dark ">
                                <div class="card text-dark">
                                    <%--<img class="card-img" src="Images/banner9.jpg" alt="Card image cap">--%>
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">
                                            <asp:Label ID="Label11" runat="server" Text="Rental Summary"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Source
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                                                <%--<asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>--%>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Destination
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lbldes" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                selected Hours
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblshr" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Pick-up Date
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblpdt" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                         <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Return Date
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblrdt" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        
                                        <asp:LinkButton ID="LinkButton2" runat="server">Edit</asp:LinkButton>
                                    </div>
                                    
                                </div>
                                
       
                    </div>
                    
                <div class="col-lg-8">
                    <p>
                    </p>
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate>
                            <div class="card-deck text-dark">
                                <div class="card text-dark">
                                    <img class="card-img-top" src="Images/banner9.jpg" alt="Card image cap" style="height:150px; width:150px;">
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Fuel Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Mileage
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Seaters
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Gear Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <%--<ul class="list-group list-group-flush">
                                            <li class="list-group-item text-dark">
                                                <div class=" row  text-dark-sm">
                                                    <div class="col-sm-5 ">
                                                        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover"
                                                            data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                                                            Popover on right
                                                        </button>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>--%>
                                    </div>
                                    <div class="card-footer">
                                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Book Now" />
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                        GridLines="Vertical">
                        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <FooterTemplate>
                            <table class="w-100">
                                <tr>
                                    <td colspan="2">
                                        <asp:ImageButton ID="ImageButton1" class="card-img-top" runat="server" Height="16px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Button3" runat="server" Text="Button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="Button4" runat="server" Text="Button" />
                                    </td>
                                </tr>
                            </table>
                        </FooterTemplate>
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    </asp:DetailsView>
                </div>
            </div>
                <p></p>
                    <div class="col ">
                        <div class="card-deck text-dark">
                                <div class="card text-dark">
                                    <%--<img class="card-img" src="Images/banner9.jpg" alt="Card image cap">--%>
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">
                                            <asp:Label ID="Label6" runat="server" Text="Fillter Car Rents"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                By Cost Range
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:CheckBoxList ID="CheckBoxList1" class="form-control form-control-sm" runat="server">
                                                </asp:CheckBoxList>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                               By Seaters
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Seaters
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Gear Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Gear Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        
                                        <asp:LinkButton ID="LinkButton1" runat="server">Edit</asp:LinkButton>
                                    </div>
                                    
                                </div>
       
                    </div>
                    
                <div class="col-lg-9">
                    <p>
                    </p>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="card-deck text-dark">
                                <div class="card text-dark">
                                    <img class="card-img-top" src="Images/banner9.jpg" alt="Card image cap">
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Fuel Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Mileage
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-5 ">
                                                Seaters
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Gear Type
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </div>
                                        </div>
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item text-dark">
                                                <div class=" row  text-dark-sm">
                                                    <div class="col-sm-5 ">
                                                        <button type="button" class="btn btn-secondary" data-container="body" data-toggle="popover"
                                                            data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                                                            Popover on right
                                                        </button>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="card-footer">
                                        <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Book Now" />
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" ForeColor="Black"
                        GridLines="Vertical">
                        <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <FooterTemplate>
                            <table class="w-100">
                                <tr>
                                    <td colspan="2">
                                        <asp:ImageButton ID="ImageButton1" class="card-img-top" runat="server" Height="16px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="Button3" runat="server" Text="Button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="Button4" runat="server" Text="Button" />
                                    </td>
                                </tr>
                            </table>
                        </FooterTemplate>
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    </asp:DetailsView>
                </div>
            </div>
                </div>
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
