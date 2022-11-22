<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Search.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-5" style="left: 0px; top: 60px; height: 242px">
                <h2>Please enter the name of the organisation:</h2>
                <p>
                    &nbsp;<a class="btn btn-default"><asp:TextBox ID="txtSearch" runat="server" Width="157px"></asp:TextBox>
                    </a>
                </p>
                <p>
                    &nbsp;<asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
                </p>
                <p>
                    <asp:Label ID="lblSearchResult" runat="server"></asp:Label>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
