<%@ Page Language="C#" AutoEventWireup="true"  CodeBehind="userFavourites.aspx.cs" Inherits="WebApplication4.userFavourites" %>

<!DOCTYPE html>
<style> 
    .div-1 {
        background-color: #0094ff;
        height: 200px;
        font-size:large;
        font-family:Arial;
        font-weight: bolder;
        font-palette:light;
        
    }
.table-condensed tr th {
border: 0px solid #6e7bd9;
color: white;
background-color: #6e7bd9;
}

.table-condensed, .table-condensed tr td {
border: 0px solid #000;
}

tr:nth-child(even) {
background: #f8f7ff
}

tr:nth-child(odd) {
background: #fff;
}
   body {
width: 100%;
margin: 5px;
}
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div  align="center">
            <div class ="div-1">
           <br />
          <h1><center>Displaying The user favourites!</center> </h1>
          </div>  
            <br />
            <br />
        <asp:GridView CssClass="table table-condensed table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1335px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                <ControlStyle BackColor="#FF3300" />
                </asp:CommandField>
                <asp:ButtonField ButtonType="Button" Text="View">
                <ControlStyle BackColor="#0033CC" />
                </asp:ButtonField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Organisation.orgName AS Name, Organisation.orgEmail AS Email FROM saveORG INNER JOIN Organisation ON saveORG.orgID = Organisation.orgID INNER JOIN Users ON saveORG.userEmail = Users.userEmail" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    </form>
</body>
</html>
