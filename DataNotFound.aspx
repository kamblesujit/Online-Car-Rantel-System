<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataNotFound.aspx.cs" Inherits="DataNotFound" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 167px;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align="center" colspan="2" rowspan="2">
        
        <asp:Label ID="Label1" runat="server" Text="Data Not Found" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="173px">
                    <table class="style1">
                        <tr>
                            <td class="style3">
                                <asp:Label ID="Label2" runat="server" 
                                    Text="Pls click to proper links as you needed"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
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
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <div align="center">
        
    </div>
    </form>
</body>
</html>
