<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="donations.aspx.cs" Inherits="iQHub.donations" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server"> 
    <!DOCTYPE Html>
 <html>
    <style>
        .rptr table
{
 background: #eee;
 font: 14px segoe ui;
 border-collapse: collapse;
 width: 25%;
 margin: 5px;
 float: left;
}
.rptr table th
{
 background: #f90;
 color: #fff;
 padding: 8px 10px;
 text-align: left;
}
.rptr table td
{
 padding: 5px 10px;
}
        .auto-style1 {
            height: 28px;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT [donationID], [orgID], [donationAmount] FROM [Donations]" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
           <div align="center">
            <div class ="div-1">
                
           <br />
          <h1><center>Displaying The Donations!</center> </h1>
          </div>  
            <br />
            <br />
        
    <table>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblID" runat="server" Text="Organisation ID:  "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:Label ID="lblAmount" runat="server" Text="Amount:  "></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
            </td><td class="auto-style1">           
            <asp:Button ID="btnDonate" runat="server" Text="Donate!" BorderStyle="Outset" BorderColor="Black" BorderWidth="3" ForeColor="White" BackColor="Blue" OnClick="btnDonate_Click" />
            </td>

        </tr>
    </table>
    <p> </p>
    <p> </p>
    <p> </p>
    <p>Donations</p>
<asp:Repeater runat="server" DataSourceID="SqlDataSource1">

    <ItemTemplate>
        <div class="rptr" >
            <table>             
                <th>Donations <%#Eval("donationID") %>  </th>
                 <tr>
                  <td>  <%#Eval("orgID") %>   </td> 
                 <td> <%#Eval("donationAmount") %>  </td>                  
                 </tr> 
            </table>
        </div> 
    </ItemTemplate>
</asp:Repeater>
  
               
           </div>              
</html>
</asp:Content>

