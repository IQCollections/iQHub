<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="iQHub.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>

<style>
        body {
           
            font-size: 35px;
            font-family: 'Times New Roman';
            font-weight: bold;
            font-style: italic;
        }

        label{
            color:  #e74c3c;
            font-size: 35px;
            font-family: 'Times New Roman';
            font-weight: bold;
            font-style: italic;
        }

        button{
            color: #2ecc71;
            font-size: 20px;
            font-family: 'Times New Roman';
            font-weight: bold;
        }
        body{
            background-color:     #1c2833;
            color:  #f0f3f4 ;
        }
        table{
            border: #3498db;
            border-width: medium;
            border-block-style: ridge;
        }
        
    .auto-style1 {
        width: 177px;
    }
        
    .auto-style2 {
        width: 661px;
    }
        
    </style>

<html>
<%--<head runat="server">
    <title></title>
</head>--%>
<body>
    <%--<form id="form1" runat="server">--%>
        <div>
            <h1 align="center">Registration</h1>
            <table align="center">
                <tr>
                    <td class="auto-style1">User Email</td>
                    <td><asp:TextBox ID="txtUseremail" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="UserEmail is Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Username</td>
                    <td><asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">Password</td>
                    <td ><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                </table>
            <table align="center">
                <tr>
                    <td class="auto-style2" align="center">
                        <asp:Label ID="lblMsg" runat="server" Visible="False" ForeColor="Red"></asp:Label></td>
                </tr>
                </table>
            <table align="center">
                <tr>
                    <td class="auto-style1" style="width:100px"><br/><br/><asp:Button ID="btnRegister" runat="server" Text="Register" align="center" OnClick="btnRegister_Click" Width="80px"/></td>
                    <td style="width:100px"><br/><br/>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                    </td>
                    
                </tr>
            </table>
        </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>
