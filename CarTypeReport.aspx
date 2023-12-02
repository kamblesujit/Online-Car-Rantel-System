<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CarTypeReport.aspx.cs" Inherits="CarTypeReport" %>

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
         <p></p>
        <div class="row text-center">

            <div class="col"> <h3> Car Type Booking Details</h3></div>

        </div><p></p>
        <div class="row">
            <p>
            </p>
            <div class="col">
            </div>
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Select Car Type" ></asp:Label>
            </div>
            <div class="col">
                <asp:DropDownList ID="ddlctype" runat="server" 
                    class="form-control form-control-lg" AutoPostBack="True" onselectedindexchanged="ddlctype_SelectedIndexChanged" 
                   >
                </asp:DropDownList>
                <br />
                
            </div>
            <div class="col">
            </div>
        </div>
        <p></p><p></p>
        <div class="row"><p></p>
            <div class="col">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString39 %>" 
                    SelectCommand="SELECT [bkimg], [bkcname], [bkftype], [bkmodl], [bkmillege], [bkmeeter], [bkrmeeter], [bkseater], [bkgeartype], [bkrateperhr], [bkseml], [bkdrivlinc], [bkadhaarno], [bktotalamt], [bkreturndate], [bkpickupdate], [bkdate] FROM [BookingDetails] WHERE ([bkcname] = @bkcname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlctype" Name="bkcname" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
            </div>
            <div class="col">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="bkid" DataSourceID="SqlDataSource2" 
                    ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="bkid" HeaderText="bkid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="bkid" />
                        <asp:BoundField DataField="bkimg" HeaderText="bkimg" SortExpression="bkimg" />
                        <asp:BoundField DataField="bkcname" HeaderText="bkcname" 
                            SortExpression="bkcname" />
                        <asp:BoundField DataField="bkftype" HeaderText="bkftype" 
                            SortExpression="bkftype" />
                        <asp:BoundField DataField="bkmodl" HeaderText="bkmodl" 
                            SortExpression="bkmodl" />
                        <asp:BoundField DataField="bkmillege" HeaderText="bkmillege" 
                            SortExpression="bkmillege" />
                        <asp:BoundField DataField="bkmeeter" HeaderText="bkmeeter" 
                            SortExpression="bkmeeter" />
                        <asp:BoundField DataField="bkrmeeter" HeaderText="bkrmeeter" 
                            SortExpression="bkrmeeter" />
                        <asp:BoundField DataField="bkseater" HeaderText="bkseater" 
                            SortExpression="bkseater" />
                        <asp:BoundField DataField="bkgeartype" HeaderText="bkgeartype" 
                            SortExpression="bkgeartype" />
                        <asp:BoundField DataField="bkrateperhr" HeaderText="bkrateperhr" 
                            SortExpression="bkrateperhr" />
                        <asp:BoundField DataField="bkseml" HeaderText="bkseml" 
                            SortExpression="bkseml" />
                        <asp:BoundField DataField="bksuid" HeaderText="bksuid" 
                            SortExpression="bksuid" />
                        <asp:BoundField DataField="bkdrivlinc" HeaderText="bkdrivlinc" 
                            SortExpression="bkdrivlinc" />
                        <asp:BoundField DataField="bkadhaarno" HeaderText="bkadhaarno" 
                            SortExpression="bkadhaarno" />
                        <asp:BoundField DataField="bktc" HeaderText="bktc" SortExpression="bktc" />
                        <asp:BoundField DataField="bkpaymentstatus" HeaderText="bkpaymentstatus" 
                            SortExpression="bkpaymentstatus" />
                        <asp:BoundField DataField="bktotalamt" HeaderText="bktotalamt" 
                            SortExpression="bktotalamt" />
                        <asp:BoundField DataField="custid" HeaderText="custid" 
                            SortExpression="custid" />
                        <asp:BoundField DataField="bkreturndate" HeaderText="bkreturndate" 
                            SortExpression="bkreturndate" />
                        <asp:BoundField DataField="bkpickupdate" HeaderText="bkpickupdate" 
                            SortExpression="bkpickupdate" />
                        <asp:BoundField DataField="bkdate" HeaderText="bkdate" 
                            SortExpression="bkdate" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString40 %>" 
                    SelectCommand="SELECT * FROM [BookingDetails] WHERE ([bkcname] = @bkcname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlctype" Name="bkcname" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        
        </div>

    </div>
    </form>
</body>
</html>
