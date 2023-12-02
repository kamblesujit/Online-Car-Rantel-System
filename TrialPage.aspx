<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrialPage.aspx.cs" Inherits="TrialPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


  <%--<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
    <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('txtplaces'));
            google.maps.event.addListener(places, 'place_changed', function () {
                var place = places.getPlace();
                var address = place.formatted_address;
                var latitude = place.geometry.location.lat();



                var longitude = place.geometry.location.lng();
                var msg = "Address: " + address;
                msg += "\nLatitude: " + latitude;
                msg += "\nLongitude: " + longitude;
                alert(msg);
            });
        });
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">



   <%-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true&libraries=places"></script>
<script type="text/javascript">
    google.maps.event.addDomListener(window, 'load', initialize);
    function initialize() {
        var autocomplete = new google.maps.places.Autocomplete(document.getElementById('txtAutocomplete'));
        google.maps.event.addListener(autocomplete, 'place_changed', function () {
            // Get the place details from the autocomplete object.
            var place = autocomplete.getPlace();
            var location = "<b>Address</b>: " + place.formatted_address + "<br/>";
            location += "<b>Latitude</b>: " + place.geometry.location.A + "<br/>";
            location += "<b>Longitude</b>: " + place.geometry.location.F;
            document.getElementById('lblResult').innerHTML = location
        });
    }
</script>
<span>Location:</span>
<input type="text" id="txtAutocomplete" style="width: 300px" placeholder="Enter your address" /><br /><br />
<label id="lblResult" />


--%>



    <%--<div>
        <asp:TextBox ID="txtplaces" runat="server"></asp:TextBox>
        <input id="txtplaces" type="text" />
    </div>--%>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
    <table>
        <thead>aahahh</thead>
        <tbody>gmejgdjhj</tbody>
    </table>    
    </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="TextBox2" runat="server" pattern="^\d{4}\s\d{4}\s\d{4}$"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <asp:GridView ID="GridView1" runat="server" OnRowEditing="OnRowEditing">
     <Columns>
        <asp:TemplateField>
            <ItemTemplate>
            <asp:LinkButton Text="Edit" runat="server" CommandName="Edit" />
             </ItemTemplate>
             <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" Text="get" runat="server" CommandName="get" />
             </ItemTemplate>
                <EditItemTemplate>
            <asp:LinkButton Text="Update" runat="server" OnClick="OnUpdate" />
            <asp:LinkButton Text="Cancel" runat="server" OnClick="OnCancel" />
                </EditItemTemplate>
          </asp:TemplateField>
           </Columns>
    </asp:GridView>
    </form>
</body>
</html>
