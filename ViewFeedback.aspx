<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

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
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <p>
        </p>
        <div class="row border-bottom">
            <p>
            </p>
            <div class="col">
                <h3>Customers Feedback</h3>
            </div>
            <p>
            </p>
        </div>
        <p>
        </p>
        <div class="row ">
            <p>
            </p>
            <div class="col">
                
            </div>
            <div class="col">
                <asp:TextBox ID="TextBox1" class="form-control form-control-sm" runat="server" 
                    Visible="False"  autocomplete="off" ></asp:TextBox>
            </div>
            <div class="col">
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" 
                    Text="Enter ID or Name or Mobile no" onclick="Button2_Click" 
                    Visible="False" />
            </div>
            <div class="col">
                <asp:Button ID="Button1" runat="server" class="btn btn-primary" 
                    Text="Search Record" onclick="Button1_Click" />
            </div>
        </div>
        <p>
        </p>
        </div>
        
        <div class="container">
            <div class="row">
                <div class="col">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                            GridLines="None" AutoGenerateColumns="False" DataKeyNames="Cust_id" 
                            DataSourceID="SqlDataSource1">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Cust_id" HeaderText="Feedback  ID" 
                                    InsertVisible="False" ReadOnly="True" SortExpression="Cust_id">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Cust_name" HeaderText="Name" 
                                    SortExpression="Cust_name">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Cust_number" HeaderText="Number" 
                                    SortExpression="Cust_number">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Cust_emailid" HeaderText="Email ID" 
                                    SortExpression="Cust_emailid">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Comment" HeaderText="Comment" 
                                    SortExpression="Comment">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CmntDateTime" HeaderText="DateTime" 
                                    SortExpression="CmntDateTime">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="stauts" HeaderText="Status" SortExpression="stauts">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Reply Feedback">
                                    <ItemTemplate>
                                        <asp:Button ID="Button3" runat="server" BackColor="#3366FF" 
                                            CommandArgument='<%# Eval("Cust_id")%>' ForeColor="Black" 
                                            onclick="Button3_Click" Text="Reply" />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString6 %>" 
                            SelectCommand="SELECT * FROM [Customer_Feedback] ORDER BY [Cust_id] DESC">
                        </asp:SqlDataSource>
                    </asp:Panel>
                </div>                
            </div>
            <div class="row">
                <div class="col">
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col">Feedback ID</th>
                  <th scope="col">Name</th>
                  <th scope="col">Mobile No</th>
                  <th scope="col">Email ID</th>
                  <th scope="col">Comment</th>
                  <th scope="col">Date Time</th>
                  <th scope="col">Status</th>
                  <th scope="col">Reply Option</th>
                  <th scope="col"></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  
                  <td scope="row"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                  <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                  <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                  <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
                  <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                  <td><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
                   <td><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
                  <td><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                  <td>
                      <asp:Button ID="btnreply" runat="server" Text="Reply" 
                          onclick="btnreply_Click" /></td>
                </tr>
               
              </tbody>
            </table>

                    </asp:Panel>
                </div>
            </div>
        
        </div>



    </form>
</body>
</html>
