<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stats.aspx.cs" MasterPageFile="~/Site.Master" Inherits="iQHub.Stats" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <!DOCTYPE html>

<html>
<head >
<title>Orginsational Statistics!</title>
<link href="bootstrap.min.css" rel="stylesheet" />
<style>
body {
width: 100%;
margin: 5px;
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
</style>
</head>
<body>


<div>
<h2>Orginisations Statistics:</h2>
<hr />
<br />
<br />
    <div align="center"
        ><table>
            <tr>
                <td>
        <h3>Page Visits:</h3>
    <asp:Chart ID="chrData"  runat="server">
        <Series>
            <asp:Series Name="Series1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="Char"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
                </td>
                <td>
             <h3>Page Donations:</h3>
    <asp:Chart ID="chr2"  runat="server">
        <Series>
            <asp:Series Name="Series1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="Char"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
                </td>
            </tr>
         </table>
    </div>
   
<div>
       <asp:GridView ID="grdOrgStats" BorderStyle="Double" BorderColor="Blue" runat="server" HeaderStyle-ForeColor="#3333FF" AutoGenerateColumns="False" CssClass="table table-condensed table-hover" DataSourceID="SqlDataSource1">
           <Columns>
               <asp:BoundField DataField="orgName" HeaderText="orgName" SortExpression="orgName" />
               <asp:BoundField DataField="orgEmail" HeaderText="orgEmail" SortExpression="orgEmail" />
               <asp:BoundField DataField="orgLocation" HeaderText="orgLocation" SortExpression="orgLocation" />
               <asp:BoundField DataField="orgCategory" HeaderText="orgCategory" SortExpression="orgCategory" />
               <asp:BoundField DataField="pageVisits" HeaderText="pageVisits" SortExpression="pageVisits" />
               <asp:BoundField DataField="orgDonated" HeaderText="orgDonated" SortExpression="orgDonated" />
           </Columns>
<HeaderStyle ForeColor="#3333FF"></HeaderStyle>
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [orgName], [orgEmail], [orgLocation], [orgCategory], [pageVisits], [orgDonated] FROM [Organisation]"></asp:SqlDataSource>
   </div>
</div>

</body>
</html>

</asp:Content>

