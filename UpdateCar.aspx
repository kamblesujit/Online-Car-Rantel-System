<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCar.aspx.cs" Inherits="UpdateCar" %>

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
    <div class="container"><p></p>

     <div class="row border-bottom"><p></p>
            <div class="col"><h3> Update Car Details</h3></div><p></p>
        </div><p></p>

     <div class="row text-center"><p></p>
            <div class="col">
            </div>
            <div class="col">
                 <asp:TextBox ID="txtsrch" class="form-control form-control-sm" runat="server"></asp:TextBox>                
            </div>
            <div class="col">
                <asp:Button ID="btnsrch" class="btn btn-primary" runat="server" 
                    Text="Enter Customer ID" onclick="btnsrch_Click" />                               
            </div>
            <div class="col">
                
            </div>
        
        </div><p></p>


     <div class="row "><p></p>
            <div class="col">
                <div class="card text-dark" style="width:700px">
                                <div class="card text-dark">
                                    
                                    <div class="card-body">
                                        <h5 class="card-title text-dark text-center">
                                            <asp:Label ID="Label1" runat="server" Text="Car Allocated Details"></asp:Label></h5>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Customer ID
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtcid" class="form-control form-control-sm" runat="server" 
                                                   ></asp:TextBox>
                                            </div>
                                        </div><p></p>
                                        <%--<div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Customer Name
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtcnm" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div><p></p>--%>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Car Type
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlctype" class="form-control form-control-sm" 
                                                    runat="server"  >
                                                </asp:DropDownList>
                                            </div>
                                        </div><p></p>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Brand Name
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlbnm" class="form-control form-control-sm" 
                                                    runat="server" >
                                                </asp:DropDownList>
                                            </div>
                                        </div><p></p>
                                         <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Model Name
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlmnm" class="form-control form-control-sm" runat="server">
                                                </asp:DropDownList>
                                            </div>
                                        </div><p></p>
                                         <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Previous Meeter Reading
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtpmreading" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div><p></p>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-4 ">
                                                Latest Meeter Reading
                                            </div>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtlmreading" class="form-control form-control-sm" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <p></p>
                                        <div class=" row  text-dark-sm">
                                            <div class="col-sm-6 ">
                                                <asp:Button ID="btnsubmit" class="btn btn-primary" runat="server" Text="Submit" onclick="btnsubmit_Click" 
                                                     />
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
            </div>
        
        </div><p></p>
            
    </div>











    </div>

    </form>
</body>
</html>
