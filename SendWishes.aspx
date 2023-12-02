<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendWishes.aspx.cs" Inherits="SendWishes" %>

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
    <script src="js/innerhtmlpageslinks.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">  
        <div class="row">
            <div class="col">
                
            </div>
            <p></p>
            <div class="col"> <p></p>               
               <%-- <asp:Panel ID="Panel1" runat="server">
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="col"></div>

                   
                </asp:Panel>--%> 
                <asp:Label ID="Label1" runat="server" Text="Send Emails "></asp:Label>              
            </div><p></p>
            <div class="col">
                
            </div>
        </div>  <p></p>
        <div class="row">
            <div class="col"><p></p>
            <asp:Label ID="Label2" runat="server" Text="Email Subject"></asp:Label>
            </div><p></p>
            <div class="col"><p></p>
                <asp:TextBox ID="txtemlsub" runat="server" Font-Size="Small" required=""></asp:TextBox>
            </div><p></p>
            <div class="col">
           
            </div>
            <div class="col">
           
            </div>
        </div>
        <div class="row">
            <div class="col"><p></p>
                <asp:Label ID="Label3" runat="server" Text="Message"></asp:Label>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtmsg" runat="server" Height="133px" TextMode="MultiLine" Font-Size="Small" required=""
                                    Width="228px"></asp:TextBox>
            </div>
            <div class="col">
           
            </div>
            <div class="col">
           
            </div>
        </div>
        <div class="row">
            <div class="col">
           
            </div>
            <div class="col"><p></p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="cname" HeaderText="Name" SortExpression="cname">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="emailid" HeaderText="Email ID" 
                            SortExpression="emailid">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
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
            </div>
            <div class="col">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString26 %>" 
                    SelectCommand="SELECT [cname], [emailid] FROM [CustomerDetail]">
                </asp:SqlDataSource>
            </div>
            <div class="col">
           
            </div>
        </div>
        <div class="row">
            <div class="col">
            
            </div>
            <div class="col">
            <asp:Button ID="Button1" runat="server" Text="Send Email" Font-Size="Small" 
                    onclick="Button1_Click"/>
            </div>
            <div class="col">
            
            </div>
        </div>
    </div>




    </form>
</body>
</html>
