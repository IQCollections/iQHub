<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sort.aspx.cs" Inherits="Sort.Sort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4" style="left: 0px; top: 40px; height: 234px">
                <h2>Click the sort button to view a list of the organisation&#39;s ordered by needed donations</h2>
                <p>
                    <asp:Button ID="btnSort" runat="server" OnClick="btnSort_Click1" Text="Sort" />
                </p>
                <p>
                    <asp:TextBox ID="txtDisplay" runat="server" Enabled="False" Height="93px" TextMode="MultiLine" Width="243px"></asp:TextBox>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
