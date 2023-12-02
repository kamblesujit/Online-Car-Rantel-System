<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRentSummary.aspx.cs" Inherits="CRentSummary" %>

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
    <script src="js/JScript.js" type="text/javascript"></script>
     
</head>
<body>
<!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bgg-sf fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Car Rental</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
     
      </div>
    </nav>


    <form id="form1" runat="server">


    <div id="about" class="rentsummary bgg-rentsumm">
        <div class="container">
            <div class="row">
               
                
            </div>


            <div class="row " >
                <div class="col-lg-4 bgg-sf text-white">
                <p></p>
                    <div class="col " >
                        <div class="card-deck text-white  " >
                                <div class="card text-white bgg-trans" >
                                    <%--<img class="card-img" src="Images/banner9.jpg" alt="Card image cap">--%>
                                    <div class="card-body">
                                        <h5 class="card-title text-white">
                                            <asp:Label ID="Label11" runat="server" Text="Rental Summary"></asp:Label></h5>
                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                Service
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblsrvc" runat="server" Text=""></asp:Label>
                                                <%--<asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>--%>
                                            </div>
                                        </div>
                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                Source
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>
                                                <%--<asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>--%>
                                            </div>
                                        </div>
                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                Destination
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lbldes" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                 Days
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lbldays" runat="server" Text=""></asp:Label>                                                                                               
                                            </div>
                                        </div>
                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                 Hours
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblshr" runat="server" Text=""></asp:Label>                                                
                                            </div>
                                        </div>
                                       <%-- <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                 Minutes
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblmin" runat="server" Text=""></asp:Label>                                                
                                            </div>
                                        </div>
--%>                                        <div class=" row  text-white-sm">
                                            <div class="col-sm-6 ">
                                                Pick-up Date
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblpdt" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                         <div class=" row  text-white-sm">
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
                    </div>
                    <p></p>

               <div class="col">
                    <p>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString5 %>" 
                            SelectCommand="navin" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:SessionParameter Name="CID" SessionField="ctyp" Type="Int32" 
                                    DefaultValue="" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </p>
                   
                         </div>
   
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString19 %>" 
        SelectCommand="navin" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="CID" SessionField="ctyp" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

                   
                       


                    <div class="accordion" id="accordionExample">
  <div class="card   ">
    <div class="card-header " id="headingOne" >
      <h5 class="mb-0">
        <button class="btn btn-link " type="button" data-toggle="collapse" data-target="#collapseOne"  aria-controls="collapseOne">
          Elgiblity
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
      <div class="card-body bgg-sf text-white">
       <li>The minimum age required to brent myless car is 21 years old.</li>
       <li>Driving license should be compulsary.</li>
       <li>Adhar card should be required;</li>
      </div>
    </div>
  </div>


  
<div class="card   ">
    <div class="card-header " id="headingtwo" >
      <h5 class="mb-0">
        <button class="btn btn-link " type="button" data-toggle="collapse" data-target="#collapsetwo"  aria-controls="collapsetwo">
          Fare Details
        </button>
      </h5>
    </div>

    <div id="collapsetwo" class="collapse show" aria-labelledby="headingtwo" data-parent="#accordionExample">
      <div class="card-body bgg-sf text-white">
       Rate RS:-80/hr<p></p>       Minimum billing       Rs:-700/-\n       <li>Kilometres free for 1day/2day/3day packages respectively 150km/300km/450km;</li>       <li>Rs 9/km for additional km;</li>       <li>late fee Rs:-350;</li>       <li>Rs700 minimum billing;</li>       <li>Door step facility provide up to 7km around the area of office location(for ex: arewada,shivajinagar,swargate,dapodi etc);</li>

      </div>
    </div>
  </div>


<div class="card   ">
    <div class="card-header " id="headingthree" >
      <h5 class="mb-0">
        <button class="btn btn-link " type="button" data-toggle="collapse" data-target="#collapsethree"  aria-
controls="collapsethree">
          Cancellation policy
        </button>
      </h5>
    </div>

    <div id="collapsethree" class="collapse show" aria-labelledby="headingthree" data-parent="#accordionExample">
      <div class="card-body bgg-sf text-white">
     <li>if booking is cancelled within 24 hours of pickup time Rs 200 or 50% of total booking amount will be deducted;</li>
     <li> No refund will be provided in case of hourly rental booking;  </li>
      </div>
    </div>
  </div>




 <%-- <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          Collapsible Group Item #2
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      </div>
    </div>
  </div>--%>

</div>



                  <%-- ---%>  <p></p>

                    <p></p>
               </div>

                <div class="col-lg-8 bg-white text-dark">
                <p></p>
                  
               <p></p>


             




                <div class="col">
                    <asp:Label ID="Label1" runat="server" Text="For Booking Process Please Select the Car" Font-Size="Large"></asp:Label>
                </div>










                     
            

                    <br />
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView4_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:TemplateField HeaderText="Image" SortExpression="rimg">
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="49px" 
                                        ImageUrl='<%# Eval("rimg") %>' Width="57px" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="rtyp" HeaderText="Type" SortExpression="rtyp" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rbnm" HeaderText="Brand" SortExpression="rbnm" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rf" HeaderText="Fuel" SortExpression="rf" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rm" HeaderText="Model" SortExpression="rm" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rst" HeaderText="Seater" SortExpression="rst" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rrph" HeaderText="Rate/hr" SortExpression="rrph" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rgr" HeaderText="Gear" SortExpression="rgr" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="rtot" HeaderText="Total" SortExpression="rtot" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString36 %>" 
                        
                        SelectCommand="SELECT [rimg], [rtyp], [rbnm], [rf], [rm], [rst], [rrph], [rgr], [rtot], [rmetr] FROM [RentcalculationDetails] ORDER BY [rid] DESC">
                    </asp:SqlDataSource>

                </div>

            </div>

                <p></p>
                   
                       

              <div class="row bg-danger">
              
              </div>      
                      
         </div>

            
    </div>
    
    
      
   



   <footer class="py-2 bgg-sf">
      <div class="container">
      <div class="row">
            <%--    <div class="col">
                    <a href="#home" class="badge badge-dark">Home</a>
                    <a href="#about" class="badge badge-dark">About</a>
                    <a href="#services" class="badge badge-dark">Service</a>
                    <a href="#contact" class="badge badge-dark">Contact</a>
                </div>--%>
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
