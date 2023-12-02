<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddToCarDropdownDetails.aspx.cs" Inherits="AddToCarDropdownDetails" %>

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
    
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <p></p>
        <div class="row">
            <div class="col"><h3><p>Adding Car Service Deatils</p></h3></div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="row">
                    <asp:Button ID="btnnewcar" runat="server" Text="New Car" 
                        class="btn btn-primary" onclick="btnnewcar_Click" formnovalidate />
                </div>
                <div class="row">
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <div class="row">
                            <div class="col "><p></p>
                    <asp:Label ID="Label1" runat="server" Text="Car Type"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtCtype" class="form-control form-control-sm" runat="server" autocomplete="off"
                        required="" ></asp:TextBox>                    
                </div>
                </div>

                         <div class="col"><p></p>
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Submit" 
                                 onclick="Button2_Click"  />
            </div>   
                    </asp:Panel>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <asp:Button ID="btnnewbrand" runat="server" Text="Sub Category" 
                        class="btn btn-primary" onclick="btnnewbrand_Click" formnovalidate />
                </div>
                <div class="row">
                     <asp:Panel ID="Panel2" runat="server" Visible="False">
                            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label7" runat="server" Text="Car Type"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </div>
              </div>
                            
                            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label3" runat="server" Text="Brand Name"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:TextBox ID="txtBname" class="form-control form-control-sm" runat="server" autocomplete="off"
                        required="" ></asp:TextBox>
                </div>
              </div>

                            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label5" runat="server" Text="Fuel Type"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                </div>
              </div>

                            <div class="row">
                <div class="col">
                <p></p>
                    <asp:Label ID="Label2" runat="server" Text="Model Name"></asp:Label>
                </div>
                <div class="col">
                <p></p>
                    <asp:TextBox ID="txtMname" class="form-control form-control-sm" runat="server" autocomplete="off"
                        required="" ></asp:TextBox>
                </div>
              </div>

                            <div class="row">
                <div class="col"><p></p>
                    <asp:Label ID="Label4" runat="server" Text="Seater"></asp:Label>
                </div>
                <div class="col"><p></p>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                    </asp:DropDownList>
                </div>
              </div>

                            <div class="col"><p></p>
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" 
                    onclick="Button1_Click" />
            </div>
                    </asp:Panel>
                </div>
            </div>
        </div>








        <div class="row">   
            <div class=" col-sm-6">
                <p></p>
              <div class="row">
                
              </div> 

              

              

            </div>
             <div class="col-sm-6">
             <p></p>
                

              


            </div>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>

            
             
        </div>
    </div>
    </form>
</body>
</html>
