<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orgAccount.aspx.cs" Inherits="iQHub.orgAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <!DOCTYPE html>
<style>

        div .label{
            color:  #e74c3c;
            font-size: 30px;
            margin: 200px;
            padding: 5px;
            font-family: 'Times New Roman';
            font-weight: bold; 
            font-style: italic;
        }
        body{
            font-family: 'Times New Roman';
            color:  black ;
        }
        .card {
            background:  #fdfefe;
                border: solid;
                border-color:  #40E0D0 ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            height: 80%;
            margin: 20px 150px 0px 150px;
        }
        table{
            background:  #fdfefe;
                border: solid;
                border-color:  #40E0D0 ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            font-size: 20px;
            font-family: 'Times New Roman';
            border: #3498db;
            border-width: medium;
            
        }
        td{
            align-content: center;
            align-items: center;
            margin: 5px;
            background:  #fdfefe;
                border: solid;
                border-color:   #6495ed  ;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            padding: 5px;
            width: 250px;
        }
        tr{
            align-items: center;
            align-content: center;
            margin: 5px;
            padding: 5px;
        }

        button{
            color: #2ecc71;
            font-size: 20px;
            font-family: 'Times New Roman';
            margin: 2px 10px 2px 50px;
            font-weight: bold;
        }

        div .button {
            display: flex;
            font-size: 20px;
            flex-direction: row;
            width: 200px;
            justify-content: space-between;
            margin-left: 300px;
            
            padding: 5px;
        }

        
        
    .auto-style1 {
        height: 150px;
    }
        
    </style>
<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>

<head >
    <title></title>
</head>

<body>
    <form id="form1" >
        <div class="card">
            <h1 align="center">Orgnisation Details</h1>
            <br />
            <br />
            
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="orgID" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="orgID" HeaderText="orgID" InsertVisible="False" ReadOnly="True" SortExpression="orgID" />
                    <asp:BoundField DataField="orgEmail" HeaderText="orgEmail" SortExpression="orgEmail" />
                    <asp:BoundField DataField="orgName" HeaderText="orgName" SortExpression="orgName" />
                    <asp:BoundField DataField="orgPassword" HeaderText="orgPassword" SortExpression="orgPassword" />
                    <asp:BoundField DataField="orgLocation" HeaderText="orgLocation" SortExpression="orgLocation" />
                    <asp:BoundField DataField="orgCategory" HeaderText="orgCategory" SortExpression="orgCategory" />
                    <asp:CheckBoxField DataField="isApproved" HeaderText="isApproved" SortExpression="isApproved" />
                    <asp:BoundField DataField="orgDonated" HeaderText="orgDonated" SortExpression="orgDonated" />
                    <asp:BoundField DataField="pageVisits" HeaderText="pageVisits" SortExpression="pageVisits" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Organisation] WHERE ([orgEmail] = @orgEmail)">
                <SelectParameters>
                    <asp:SessionParameter Name="orgEmail" SessionField="orgEmail" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
           
        </div>
    </form>
</body>
</html>

</asp:Content>
