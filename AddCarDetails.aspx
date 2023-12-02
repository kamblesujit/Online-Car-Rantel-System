<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCarDetails.aspx.cs" Inherits="AddCarDetails" %>

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
    <link href="vendor/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <script src="vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="vendor/jquery/jquery.min.js" type="text/javascript"></script>
    </head>
<body>
    <form id="form1" runat="server">

    <div class="container"><p></p>

        <div class="row text-center"><p></p>
            <div class="col"><p></p>

                <asp:Label ID="Label13" runat="server" Text="Avaliable Cars" Font-Size="Medium"></asp:Label>
                </div>
            <%-- <div class="col"><p></p>
                <asp:Button ID="Button3" runat="server" Text="Avaliable Car" 
                    class="btn  badge-primary" onclick="Button3_Click" formnovalidate/></div>--%>
        </div>

        <div class="row"><p></p>
            <div class="col">

            </div>
            <div class="col"><p></p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" DataKeyNames="Cid">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Cid" HeaderText="Cid" 
                            SortExpression="Cid" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="Bid" HeaderText="Bid" 
                            SortExpression="Bid" />
                        <asp:BoundField DataField="Moid" HeaderText="Moid" 
                            SortExpression="Moid" />
                        <asp:BoundField DataField="Fid" HeaderText="Fid" SortExpression="Fid" />
                        <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
                        <asp:TemplateField HeaderText="Cimages" SortExpression="Cimages">
                            <EditItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="47px" 
                                    ImageUrl='<%# Eval("Cimages") %>' Width="54px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Cimages") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Crph" HeaderText="Crph" SortExpression="Crph" />
                        <asp:BoundField DataField="millege" HeaderText="millege" 
                            SortExpression="millege" />
                        <asp:BoundField DataField="Gtype" HeaderText="Gtype" 
                            SortExpression="Gtype" />
                        <asp:BoundField DataField="Erpkm" HeaderText="Erpkm" SortExpression="Erpkm" />
                        <asp:BoundField DataField="Insamt" HeaderText="Insamt" 
                            SortExpression="Insamt" />
                        <asp:BoundField DataField="Mtrrd" HeaderText="Mtrrd" SortExpression="Mtrrd" />
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
                    ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString29 %>" 
                    
                    SelectCommand="SELECT [Cid], [Bid], [Moid], [Fid], [Sid], [Cimages], [Crph], [millege], [Gtype], [Erpkm], [Insamt], [Mtrrd] FROM [CarDetails]">
                </asp:SqlDataSource>
            </div><p></p>
            <div class="col">
                
            </div>
        
        </div><p></p>

        <div class="row"><p></p>
        <div class="col">
        </div>
            <div class="col">
                <asp:Button ID="Button2" runat="server" Text="Add Car" 
                    class="btn  badge-primary" onclick="Button2_Click" formnovalidate/>
            </div>
            <div class="col">
            
            <asp:Button ID="btnava" runat="server" class="btn  badge-primary" 
                    Text="Avaliable Cars" onclick="btnava_Click" formnovalidate/>
            </div>
            <div class="col">
                
            </div>
        </div>
        

        <asp:Panel ID="Panel1" runat="server" Visible="false">
        


          <div class="row text-center"><p></p>
            <div class="col">  <p></p>

            
            </div>
           
            <div class="col"> <p></p>
            
                <asp:Button ID="btnupdate" runat="server" class="btn  badge-primary" 
                    Text="Update" onclick="btnupdate_Click" />
             
             <asp:Button ID="Button1" class="btn  badge-primary" runat="server" 
                Text="Insert" onclick="Button1_Click" />

                <asp:Button ID="btndelete" runat="server" Text="Delete" 
                    class="btn  badge-primary" onclick="btndelete_Click" formnovalidate/>
            </div>
            <div class="col"><p></p>
                <asp:TextBox ID="txtsrch" runat="server" class="form-control form-control-sm" autocomplete="off"></asp:TextBox>
            </div>
            <div class="col"> <p></p> 
                <asp:Button ID="btnsrch" runat="server" Text="Search" 
                    class="btn  badge-primary" onclick="btnsrch_Click" formnovalidate/>
            </div>
          
        </div>


    <div class="row">
        <div class="col">
     <p></p>

        <h3></h3>
            <p class="text-center">
                Add Car</p>
            <h3>
            </h3>
        </div>
         

     </div>
     <div class="row">
        <div class="col-sm-4">
     <p></p>

            <asp:Label ID="Label2" runat="server" Text="Car Type"></asp:Label>
        </div>
         <div class="col-sm-8">
         <asp:DropDownList ID="dprctyp" class="form-control form-control-sm" runat="server" 
                 AutoPostBack="True" onselectedindexchanged="dprctyp_SelectedIndexChanged" >
          </asp:DropDownList>
        </div>

     </div>

     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label3" runat="server" Text="Brand Name"></asp:Label>
        </div>
         <div class="col-sm-8">
         <asp:DropDownList ID="drpbname" class="form-control form-control-sm" runat="server" 
                 AutoPostBack="True" onselectedindexchanged="drpbname_SelectedIndexChanged">
          </asp:DropDownList>
             
        </div>

     </div>

     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label4" runat="server" Text="Model Name"></asp:Label>
        </div>
         <div class="col-sm-8">
         <asp:DropDownList ID="drpmname" class="form-control form-control-sm" runat="server">
          </asp:DropDownList>
        </div>

     </div>

     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label5" runat="server" Text="Fuel Type"></asp:Label>
        </div>
         <div class="col-sm-8">
         <asp:DropDownList ID="drpftype" class="form-control form-control-sm" runat="server">
          </asp:DropDownList>
        </div>

     </div>

       <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label6" runat="server" Text="Seater"></asp:Label>
        </div>
         <div class="col-sm-8">
         <asp:DropDownList ID="drpseats" class="form-control form-control-sm" runat="server">
          </asp:DropDownList>
        </div>

     </div>
       <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label7" runat="server" Text="Orignal Price"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtorgnlprc" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Price ')" oninput="setCustomValidity('')" required="" pattern="\d+(\.\d{2})?"></asp:TextBox>
         
        </div>

     </div>
      <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label8" runat="server" Text="Upload Image"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:FileUpload ID="fpimage" class="form-control form-control-sm" runat="server" />
         
        </div>

     </div>


     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label9" runat="server" Text="Rate per Hrs"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtrphr" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Price ')" oninput="setCustomValidity('')"  pattern="\d+(\.\d{2})?"></asp:TextBox>
         
        </div>

     </div>

     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label10" runat="server" Text="Meeter Reading"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtmtrrd" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Reading ')" oninput="setCustomValidity('')"  pattern="\d+(\.\d{2})?" ></asp:TextBox>
         
        </div>

     </div>

     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label12" runat="server" Text="Car Insurance Amount"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtcrinsuamt" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Price ')" oninput="setCustomValidity('')"  pattern="\d+(\.\d{2})?"></asp:TextBox>
         
        </div>

     </div>


     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label11" runat="server" Text="Extra Rate per KM"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtexrpkm" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Price ')" oninput="setCustomValidity('')"  pattern="\d+(\.\d{2})?"></asp:TextBox>
         
        </div>

     </div>



     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label14" runat="server" Text="Gear Type"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:DropDownList ID="ddlgType" runat="server" CssClass="form-control">
                <asp:ListItem>-Select-</asp:ListItem>
                <asp:ListItem>Automatic</asp:ListItem>
                <asp:ListItem>Manual</asp:ListItem>
             </asp:DropDownList>
         
        </div>

     </div>


     <div class="row">
        <div class="col-sm-4">
     <p></p>

        <asp:Label ID="Label15" runat="server" Text="Millege"></asp:Label>
        </div>
         <div class="col-sm-8">
             <asp:TextBox ID="txtmillege" class="form-control form-control-sm" autocomplete="off" runat="server" oninvalid="this.setCustomValidity('Please Enter proper Millege ')" oninput="setCustomValidity('')"  pattern="\d+(\.\d{2})?"></asp:TextBox>
         
        </div>

     </div>



     <div class="row">
        <div class="col-sm-12 text-center">
     <p></p>

    

           
        </div>

     </div>
     
     <p></p>
      

     
     
     
     <p>

            </p>

     </asp:Panel>




      <%--  <asp:Panel ID="Panel3" runat="server">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Cid" DataSourceID="SqlDataSource5" 
                onselectedindexchanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Cid" HeaderText="Cid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Cid" />
                <asp:BoundField DataField="Ctid" HeaderText="Ctid" SortExpression="Ctid" />
                <asp:BoundField DataField="Bid" HeaderText="Bid" SortExpression="Bid" />
                <asp:BoundField DataField="Moid" HeaderText="Moid" SortExpression="Moid" />
                <asp:BoundField DataField="Fid" HeaderText="Fid" SortExpression="Fid" />
                <asp:BoundField DataField="Sid" HeaderText="Sid" SortExpression="Sid" />
                <asp:BoundField DataField="Cimages" HeaderText="Cimages" 
                    SortExpression="Cimages" />
                <asp:BoundField DataField="Crph" HeaderText="Crph" SortExpression="Crph" />
                <asp:BoundField DataField="Mtrrd" HeaderText="Mtrrd" SortExpression="Mtrrd" />
                <asp:BoundField DataField="Insamt" HeaderText="Insamt" 
                    SortExpression="Insamt" />
                <asp:BoundField DataField="Erpkm" HeaderText="Erpkm" SortExpression="Erpkm" />
                <asp:BoundField DataField="Gtype" HeaderText="Gtype" SortExpression="Gtype" />
                <asp:BoundField DataField="millege" HeaderText="millege" 
                    SortExpression="millege" />
            </Columns>
         </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString27 %>" 
                SelectCommand="SELECT * FROM [CarDetails]"></asp:SqlDataSource>



                <div class="row">
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="col">
                        <table class="w-100">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server" 
                                        DataSourceID="SqlDataSource7" DataTextField="Ftype" DataValueField="Ftype">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString28 %>" 
                                        SelectCommand="SELECT DISTINCT [Ftype], [Fid] FROM [FuelType] WHERE ([Fid] = @Fid)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView2" Name="Fid" 
                                                PropertyName="SelectedValue" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                </td>
                                <td class="style1">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col"></div>
                </div>


        </asp:Panel>--%>
    <%-- <asp:Panel ID="Panel2" runat="server">
     <p></p><span><h3>Avaliable Car List </h3></span>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource6">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Car" SortExpression="Cimages">
                            <EditItemTemplate>
                                <asp:Image ID="Image1" runat="server" Height="65px" 
                                    ImageUrl='<%# Eval("Cimages") %>' Width="75px" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cimages") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type" SortExpression="Ctype">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" 
                                    SelectedValue='<%# Bind("Ctype") %>'>
                                    <asp:ListItem>Hatchback</asp:ListItem>
                                    <asp:ListItem>SUV</asp:ListItem>
                                    <asp:ListItem>Sedan</asp:ListItem>
                                    <asp:ListItem>Luxury</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ctype") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="CBrand" HeaderText="Brand" 
                            SortExpression="CBrand" />
                        <asp:BoundField DataField="Moid" HeaderText="Model" SortExpression="Moid" />
                        <asp:BoundField DataField="Ftype" HeaderText="Fuel" 
                            SortExpression="Ftype" />
                        <asp:BoundField DataField="millege" HeaderText="Millege" 
                            SortExpression="millege" />
                        <asp:BoundField DataField="CSeats" HeaderText="Seater" 
                            SortExpression="CSeats" />
                        <asp:BoundField DataField="Gtype" HeaderText="Gear" SortExpression="Gtype" />
                        <asp:BoundField DataField="Crph" HeaderText="Rate/Hr" SortExpression="Crph" />
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
            

         <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
             ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString17 %>" SelectCommand="SELECT cd.Cimages,ct.Ctype,bm.CBrand,cd.Moid,F.Ftype,cd.millege,S.CSeats, cd.Gtype, cd.Crph from CarType ct, BrandName bm, FuelType F, Seaters S,CarDetails cd
	 where cd.Ctid=ct.Ctid and cd.Fid=F.Fid and cd.Sid=s.Sid and cd.Bid=bm.Bid
	"></asp:SqlDataSource>
            

         <asp:SqlDataSource ID="SqlDataSource4" runat="server"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString8 %>" 
             DeleteCommand="DELETE FROM [CarDetails] WHERE [Cid] = @Cid" 
             InsertCommand="INSERT INTO [CarDetails] ([Ctid], [Bid], [Moid], [Fid], [Sid], [Cimages], [Crph], [Mtrrd], [Insamt], [Erpkm], [Gtype], [millege]) VALUES (@Ctid, @Bid, @Moid, @Fid, @Sid, @Cimages, @Crph, @Mtrrd, @Insamt, @Erpkm, @Gtype, @millege)" 
             SelectCommand="SELECT * FROM [CarDetails] ORDER BY [Cid] DESC" 
             UpdateCommand="UPDATE [CarDetails] SET [Ctid] = @Ctid, [Bid] = @Bid, [Moid] = @Moid, [Fid] = @Fid, [Sid] = @Sid, [Cimages] = @Cimages, [Crph] = @Crph, [Mtrrd] = @Mtrrd, [Insamt] = @Insamt, [Erpkm] = @Erpkm, [Gtype] = @Gtype, [millege] = @millege WHERE [Cid] = @Cid">
             <DeleteParameters>
                 <asp:Parameter Name="Cid" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="Ctid" Type="Int32" />
                 <asp:Parameter Name="Bid" Type="Int32" />
                 <asp:Parameter Name="Moid" Type="String" />
                 <asp:Parameter Name="Fid" Type="Int32" />
                 <asp:Parameter Name="Sid" Type="Int32" />
                 <asp:Parameter Name="Cimages" Type="String" />
                 <asp:Parameter Name="Crph" Type="Int32" />
                 <asp:Parameter Name="Mtrrd" Type="Decimal" />
                 <asp:Parameter Name="Insamt" Type="Double" />
                 <asp:Parameter Name="Erpkm" Type="Int32" />
                 <asp:Parameter Name="Gtype" Type="String" />
                 <asp:Parameter Name="millege" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="Ctid" Type="Int32" />
                 <asp:Parameter Name="Bid" Type="Int32" />
                 <asp:Parameter Name="Moid" Type="String" />
                 <asp:Parameter Name="Fid" Type="Int32" />
                 <asp:Parameter Name="Sid" Type="Int32" />
                 <asp:Parameter Name="Cimages" Type="String" />
                 <asp:Parameter Name="Crph" Type="Int32" />
                 <asp:Parameter Name="Mtrrd" Type="Decimal" />
                 <asp:Parameter Name="Insamt" Type="Double" />
                 <asp:Parameter Name="Erpkm" Type="Int32" />
                 <asp:Parameter Name="Gtype" Type="String" />
                 <asp:Parameter Name="millege" Type="Int32" />
                 <asp:Parameter Name="Cid" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
             ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString7 %>" SelectCommand="SELECT cd.Cimages,ct.Ctype,bm.CBrand,cd.Moid,F.Ftype,cd.millege,S.CSeats, cd.Gtype, cd.Crph from CarType ct, BrandName bm, FuelType F, Seaters S,CarDetails cd
	 where cd.Ctid=ct.Ctid and cd.Fid=F.Fid and cd.Sid=s.Sid and cd.Bid=bm.Bid 
	"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:CarRentalConnectionString7 %>" 
             SelectCommand="SearchCar" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtsrch" Name="CID" PropertyName="Text" 
                     Type="Int32" />
                 <asp:ControlParameter ControlID="txtsrch" Name="modl" PropertyName="Text" 
                     Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
    
             <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    class="btn  badge-primary" onclick="btnupdate_Click"/>
     </asp:Panel>--%>




     
        

    


</div>

    </form>
</body>
</html>
