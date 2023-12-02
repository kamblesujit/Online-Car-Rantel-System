<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RentCalculation.aspx.cs" Inherits="RentCalculation" %>

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


    <asp:Panel ID="Panel1" runat="server">
    
    <div class="container" id="disp"><p></p>

        <div class="card-deck" id="outstatn">
         <div class="card">
    
    <div class="card-body " >
      <h5 class="card-title text-center">OutStation</h5>
        <ul class="list-group list-group">
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label1" runat="server" Text="Destination"></asp:Label></div>
                    <div class="col-sm-8"><asp:DropDownList ID="ddlcity" class="form-control form-control-sm" style="font-size:small;height:30px" runat="server">
                        </asp:DropDownList></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label2" runat="server" Text="Car Type"></asp:Label></div>
                    <div class="col-sm-8"><asp:DropDownList ID="ddlcartype" class="form-control form-control-sm" style="font-size:small;height:30px" runat="server">
                        </asp:DropDownList></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label3" runat="server" Text="Pick-up Location"></asp:Label></div>
                    <div class="col-sm-8"><asp:DropDownList ID="ddlpickuplocation" class="form-control form-control-sm" style="font-size:small;height:30px" runat="server">
                        </asp:DropDownList></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Pick-up Date"></asp:Label></div>
                    <div class="col-md-8">
                        <asp:TextBox ID="txtpickupdate" class="form-control form-control-sm" type="date" style="font-size:small;height:30px" runat="server"></asp:TextBox></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label5" runat="server" Text="Pick-up Time"></asp:Label></div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtpickuptime" class="form-control form-control-sm" type="time" value="13:45:00" style="font-size:small;height:30px" runat="server"></asp:TextBox></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label6" runat="server" Text="Return Date" ></asp:Label></div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtreturndate" class="form-control form-control-sm" type="date" runat="server" style="font-size:small;height:30px"></asp:TextBox></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label7" runat="server" Text="Return Time" ></asp:Label></div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtreturntime" class="form-control form-control-sm" type="time" value="13:45:00" style="font-size:small;height:30px" runat="server"></asp:TextBox></div>
                </div>
            </li> 
            <li>
                <div class="row">
                    <div class="col">
                    <p></p>
                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                            Text="Calculate" onclick="Button1_Click"  formnovalidate/></div>
                </div>
            </li>               
        </ul>        
    </div> 
  </div>

         <div class="card" id="locl">


            <div class="card-deck text-dark  " >
                                <div class="card text-dark bgg-trans" >
                                    <%--<img class="card-img" src="Images/banner9.jpg" alt="Card image cap">--%>
                                    <div class="card-body">
                                        <h5 class="card-title text-dark">
                                            <asp:Label ID="Label11" runat="server" Text="Rental Summary"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Service
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblsrvc" runat="server" Text=""></asp:Label>
                                                <%--<asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>--%>
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                Source
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lblsrc" runat="server" Text=""></asp:Label>
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
                                                 Days
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:Label ID="lbldays" runat="server" Text=""></asp:Label>                                                                                               
                                            </div>
                                        </div>
                                        <div class=" row  text-dark-sm">
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
--%>                                        <div class=" row  text-dark-sm">
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
    
   <%-- <div class="card-body">
      <h4 class="card-title text-center">Local</h4>
        <ul class="list-group list-group">
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label8" runat="server" Text="Pick-up location"></asp:Label></div>
                    <div class="col-sm-8"><asp:DropDownList ID="ddllocalpickuplocation" class="form-control form-control-sm" style="font-size:small;height:30px" runat="server">
                        </asp:DropDownList></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label9" runat="server" Text="Car Duration"></asp:Label></div>
                    <div class="col-sm-8"><asp:DropDownList ID="ddlcarduratiom" class="form-control form-control-sm" style="font-size:small;height:30px" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label11" runat="server" Text="Pick-up Date"></asp:Label></div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtlocalpickupdate" class="form-control form-control-sm" type="date" runat="server" style="font-size:small;height:30px"></asp:TextBox></div>
                </div>
            </li>
            <li class="list-group-item">
                 <div class="row">
                    <div class="col-sm-4">
                        <asp:Label ID="Label12" runat="server" Text="Pick-up Time"></asp:Label></div>
                    <div class="col-sm-8">
                        <asp:TextBox ID="txtlocalpickuptime" class="form-control form-control-sm" type="time" value="13:45:00" runat="server" style="font-size:small;height:30px"></asp:TextBox></div>
                </div>
            </li>             
            <li>
                <div class="row">
                    <div class="col">
                    <p></p>
                        <asp:Button ID="Button2" runat="server" class="btn btn-primary" 
                            Text="Calculate" onclick="Button2_Click" formnovalidate /></div>
                </div>
            </li>               
        </ul>        
    </div> --%>
  </div> 
        </div>

     </div>
     <p></p>
     
     <div class="container">
     <p></p>
     <div class="row">
        <div class="col">
        <%--<div class="row"><p></p>
            <div class="col">
                <asp:Label ID="Label10" runat="server" Text="Result for Searched Cars" Font-Size="Medium"></asp:Label></div>
        </div>
     <p></p>
        <div class="row">
            <div class="col-sm-1"><img src='<%#Eval("CImages") %>' alt="..." class="rounded-circle" style="height:75px; width:80px;"></div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label13" runat="server" Text='<%#Eval("Moid")%>'></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label14" runat="server" Text='<%#Eval("CBrand")%>'></asp:Label></div>
            </div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label15" runat="server" Text='<%#Eval("Ctype")%>'></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label16" runat="server" Text='<%#Eval("Ftype")%>'></asp:Label></div></div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label17" runat="server" Text='<%#Eval("millege")%>'></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label18" runat="server" Text='<%#Eval("CSeats")%>'></asp:Label></div>
            </div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label19" runat="server" Text='<%#Eval("Gtype")%>'></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label20" runat="server" Text='<%#Eval("Crph")%>'></asp:Label></div>
            </div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label21" runat="server" Text='<%#totamt%>'></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label22" runat="server" Text=""></asp:Label></div>
            </div>
            <div class="col">
                <div class="col"><p></p>
                    <asp:Label ID="Label23" runat="server" Text="Package 1"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label24" runat="server" Text="Package 2"></asp:Label></div>
                <div class="col"><p></p>
                    <asp:Label ID="Label25" runat="server" Text="Package 3"></asp:Label></div>
            </div>
            
        </div>--%>
        
         
            <br />
            
            
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource3" 
                onselectedindexchanged="GridView3_SelectedIndexChanged1" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Image" SortExpression="rimg">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="52px" 
                                ImageUrl='<%# Eval("rimg") %>' Width="55px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("rimg") %>'></asp:TextBox>
                        </EditItemTemplate>
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
                    <asp:BoundField DataField="rtot" HeaderText="Total" SortExpression="rtot" >
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
                    <asp:BoundField DataField="rmetr" HeaderText="Meeter" SortExpression="rmetr" >
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
                ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString34 %>" 
                
                SelectCommand="SELECT [rimg], [rtyp], [rbnm], [rf], [rm], [rst], [rtot], [rrph], [rgr], [rmetr] FROM [RentcalculationDetails]">
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
           
        </div>
        
     </div>
     </div>
     
     </asp:Panel>



    <asp:Panel ID="Panel2" runat="server" Visible="false">
        <div class="container">
            <div class="row border-bottom">
            <div class="col-sm-12 mx-auto "><p></p>
            <p><h3>Booking Details</h3>
                <p>
                </p>
                <p>
                </p>
                </p>
            </div>
            </div>
            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtnm" runat="server"></asp:TextBox>
                </div>
            </div>
            
             <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label13" runat="server" Text="Mobile No"></asp:Label>
                </div>
                <div class="col"><p></p>
                <asp:TextBox ID="txtmob" class="form-control form-control-sm" runat="server" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            
             <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label14" runat="server" Text="Date of Birth"></asp:Label>
                </div>
                <div class="col"><p></p>
                <asp:TextBox ID="txtdob" class="form-control form-control-sm" runat="server" type="date"  autocomplete="off"></asp:TextBox>
                </div>
            </div>

             <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label15" runat="server" Text="Email ID"></asp:Label>
                </div>
                <div class="col"><p></p>
                <asp:TextBox ID="txteml" class="form-control form-control-sm" runat="server" TextMode="Email" autocomplete="off"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label16" runat="server" Text="Gender"></asp:Label>
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
                    <asp:Button ID="Button4" runat="server" Text="Next" onclick="Button4_Click" formnovalidate/>
                </div>
                <div class="col"><p></p>
                
                </div>
            </div>

            



        </div>
        
    </asp:Panel>


    <asp:Panel ID="Panel3" runat="server" Visible="false">
    <div class="container">
         <div class="row border-bottom " >
            <div class="col-sm-12 mx-auto "><p></p>
            <p><h3>Secondray Details</h3>
                <p>
                </p>
                <p>
                </p>
                </p>
            </div>
        </div>
       

       <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label17" runat="server" Text="Driving License"></asp:Label>
                </div>
                <div class="col"><p></p>
                     <asp:TextBox ID="txtdrvlicn" class="form-control form-control-sm" runat="server" autocomplete="off"></asp:TextBox>
                </div>
            </div>
            

            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label18" runat="server" Text="Adhaar Card No"></asp:Label>
                </div>
                <div class="col"><p></p>
                     <asp:TextBox ID="txtadhaarno" class="form-control form-control-sm" runat="server" autocomplete="off" oninvalid="this.setCustomValidity('Please Enter valid Adhaar Card Number')" oninput="setCustomValidity('')" required=""  pattern="^\d{4}\s\d{4}\s\d{4}$" placeholder="9684 1552 2551"></asp:TextBox>
                </div>
            </div>

             <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:CheckBox ID="CheckBox1" runat="server" /><span>I agree with your T&C</span>
                </div>
            </div>


             <div class="row border-bottom">
                <div class="col"><p></p>
                    <asp:Button ID="Button5" runat="server" Text="Confirm" 
                        onclick="Button5_Click" />
                </div>
                <div class="col"><p></p>
                
                </div>
            </div>


             <div class="row">
                <div class="col"><p></p>
                
                </div>
                <div class="col"><p></p>
                
                </div>
            </div>


    </div>


    </asp:Panel>




    <asp:Panel ID="Panel4" runat="server" Visible="False" >
    <p></p>
    
    
             <div class="container"><p></p>
                <div class="row"><p></p>
                <div class="col text-center">
                    <asp:Label ID="Label29" runat="server" Text="Online Payment" Font-Size="Larger"></asp:Label></div><p></p>
                </div>
            </div>
            <p></p>
        <div class="container card" ><p></p><p></p>

           

            <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label20" runat="server" Text="Transaction ID"></asp:Label>
                    
                    </div>
                    
                <div class="col"><p></p><asp:Label ID="Label21" runat="server" Text=""></asp:Label></div>
                <div class="col"><p></p>
                    </div>
                <div class="col"><p></p><asp:Label ID="Label30" runat="server" Text="Total in Rs."></asp:Label><asp:Label ID="Label22" runat="server" Text=""></asp:Label></div>
                    
            </div>
        
            <div class="row"><p></p>
                <div class="col"><p></p>
                    <asp:Label ID="Label23" runat="server" Text="Choose Payment Method "></asp:Label></div>
                <div class="col"></div>
                <div class="col"><p></p>
                    <asp:Button ID="btndebit" runat="server" Text="Debit Card" 
                        onclick="btndebit_Click" /></div>
                <div class="col"><p></p>
                    <asp:Button ID="btncredit" runat="server" Text="Credit Card" /></div>
            </div>
            <p></p>
            <p></p>

            <div class="row">
                <div class="col">
                    <asp:Panel ID="Panel5" runat="server" Visible="False" class="card">
                    <p></p>
                    <div class="row">
                        <div class="col"> 
                            <asp:Label ID="Label24" runat="server" Text="Select Card Type"></asp:Label>
                        </div>
                        <div class="col">
                            <asp:DropDownList ID="ddlcardtype" runat="server" AutoPostBack="True">
                                <asp:ListItem>Visa Debit Card</asp:ListItem>
                                <asp:ListItem>Master Card </asp:ListItem>
                                <asp:ListItem>State Bank Maestro Card</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label25" runat="server" Text="Card Number"></asp:Label></div>
                        <div class="col">
                            <asp:TextBox ID="txtcno" runat="server"></asp:TextBox></div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label26" runat="server" Text="Name on Card"></asp:Label></div>
                        <div class="col">
                            <asp:TextBox ID="txtnameoncard" runat="server"></asp:TextBox></div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label27" runat="server" Text="CVV No"></asp:Label></div>
                        <div class="col">
                            <asp:TextBox ID="txtcvvno" runat="server"></asp:TextBox></div>
                    </div>
                    <p></p>
                    <div class="row">
                        <div class="col">
                            <asp:Label ID="Label28" runat="server" Text="Expiry Date"></asp:Label></div>
                         
                        <div class="col">
                            <asp:DropDownList ID="ddlmonth" runat="server" AutoPostBack="True">
                                <asp:ListItem>JAN</asp:ListItem>
                                <asp:ListItem>FEB</asp:ListItem>
                                <asp:ListItem>MAR</asp:ListItem>
                                <asp:ListItem>APL</asp:ListItem>
                                <asp:ListItem>MAY</asp:ListItem>
                                <asp:ListItem>JUN</asp:ListItem>
                                <asp:ListItem>JULY</asp:ListItem>
                                <asp:ListItem>AUG</asp:ListItem>
                                <asp:ListItem>SEP</asp:ListItem>
                                <asp:ListItem>COT</asp:ListItem>
                                <asp:ListItem>NOV</asp:ListItem>
                                <asp:ListItem>DEC</asp:ListItem>
                            </asp:DropDownList>

                            <asp:DropDownList ID="ddlyear" runat="server" AutoPostBack="True">
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                <asp:ListItem>2022</asp:ListItem>
                                <asp:ListItem>2023</asp:ListItem>
                                <asp:ListItem>2024</asp:ListItem>
                                <asp:ListItem>2025</asp:ListItem>
                            </asp:DropDownList>




                        </div>
                       
                    </div>
                    <p></p>
                    <div class="row"><p></p>
                        <div class="col text-center"><p></p>
                            <asp:Button ID="btnpayment" runat="server" Text="PayNow" 
                                onclick="btnpayment_Click" /></div>
                    </div>
                    <p></p>
                    <p></p>
                    </asp:Panel>
                </div>
            </div>

            <p></p>
                    <p></p>

        </div>
        
    </asp:Panel>


    </form>
</body>
</html>
